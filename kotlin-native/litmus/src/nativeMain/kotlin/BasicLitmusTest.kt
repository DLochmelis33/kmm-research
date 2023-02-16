import kotlin.native.concurrent.AtomicReference
import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

abstract class BasicLitmusTest(val name: String) {
    abstract fun actor1()
    abstract fun actor2()
    open fun arbiter() {}

    private val outcomeRef = AtomicReference<Any?>(null)
    var outcome: Any?
        protected set(v) {
            if (!outcomeRef.compareAndSet(null, v))
                throw IllegalStateException("cannot set outcome more than once")
        }
        get() = outcomeRef.value
}

data class LitmusTestParameters(
        val batchSize: Int,
        val affinityMap: List<Set<Int>>,
        val syncPeriod: Int,
//        val memShuffler: ???,
)

enum class OutcomeType { ACCEPTED, INTERESTING, FORBIDDEN }

data class OutcomeInfo(
        val outcome: Any?,
        val count: Int,
        val type: OutcomeType?,
)

interface LitmusTestRunner {
    fun runTest(parameters: LitmusTestParameters, testProducer: () -> BasicLitmusTest): List<OutcomeInfo>
}

class WorkerTestRunner : LitmusTestRunner {
    private data class WorkerContext(
            val tests: List<BasicLitmusTest>,
            val syncPeriod: Int,
            val barrier: SpinBarrier,
    )

    override fun runTest(parameters: LitmusTestParameters, testProducer: () -> BasicLitmusTest): List<OutcomeInfo> {
        val testBatch = List(parameters.batchSize) { testProducer() }
        val actorFunctions: List<(BasicLitmusTest) -> Unit> = listOf(
                BasicLitmusTest::actor1,
                BasicLitmusTest::actor2,
        )
        val workerContext = WorkerContext(testBatch, parameters.syncPeriod, SpinBarrier(actorFunctions.size))
        actorFunctions.map { actorFun ->
            Worker.start().execute(
                    TransferMode.SAFE /* ignored */,
                    { actorFun to workerContext }
            ) { (actorFun, workerContext) ->
                workerContext.apply {
                    var cnt = 0
                    for (test in tests) {
                        if (cnt == syncPeriod) {
                            cnt = 0
                            barrier.wait()
                        }
                        actorFun(test)
                        cnt++
                    }
                }
            }
        }.forEach { it.result }
        for (test in testBatch) test.arbiter()
        val result = testBatch
                .map { it.outcome }
                .groupingBy { it }
                .eachCount()
                .map { (outcome, count) ->
                    OutcomeInfo(outcome, count, null)
                }
        return result
    }
}
