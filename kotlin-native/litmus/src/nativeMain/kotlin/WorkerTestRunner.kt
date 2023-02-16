import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker
import kotlin.time.Duration

class WorkerTestRunner : LitmusTestRunner {
    private data class WorkerContext(
            val tests: List<BasicLitmusTest>,
            val syncPeriod: Int,
            val barrier: SpinBarrier,
    )

    override fun runTest(
            batchSize: Int,
            parameters: LitmusTestParameters,
            testProducer: () -> BasicLitmusTest
    ): LitmusResult {
        val actorFunctions: List<(BasicLitmusTest) -> Unit> = listOf(
                BasicLitmusTest::actor1,
                BasicLitmusTest::actor2,
        )
        require(actorFunctions.size == parameters.affinityMap.size)
        val testBatch = List(batchSize) { testProducer() }
        val workerContext = WorkerContext(testBatch, parameters.syncPeriod, SpinBarrier(actorFunctions.size))
        actorFunctions.mapIndexed { i, actorFun ->
            val worker = Worker.start()
            worker.setAffinity(parameters.affinityMap[i])
            worker.execute(
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
        val outcomeSetup = testBatch.first().getOutcomeSetup()
        val result = testBatch
                .map { it.outcome }
                .groupingBy { it }
                .eachCount()
                .map { (outcome, count) ->
                    OutcomeInfo(outcome, count, outcomeSetup?.getType(outcome))
                }
        return result
    }
}
