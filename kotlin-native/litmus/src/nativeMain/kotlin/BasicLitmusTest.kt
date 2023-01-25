import kotlin.native.concurrent.AtomicInt
import kotlin.native.concurrent.AtomicReference
import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

abstract class BasicLitmusTest(val name: String) {
    abstract fun actor1()
    abstract fun actor2()
    open fun arbiter() {}

    private val outcomeRef = AtomicReference<Any?>(null)
    var outcome: Any?
        protected set(v) = if (outcomeRef.value == null) {
            outcomeRef.value = v
        } else throw IllegalStateException("cannot set outcome more than once")
        get() = outcomeRef.value
}

class Barrier(private val threadCount: Int) {
    private val waitingCount = AtomicInt(0)
    private val passedBarriersCount = AtomicInt(0)

    fun wait() {
        val oldPassed = passedBarriersCount.value
        if (waitingCount.addAndGet(1) == threadCount) {
            waitingCount.value = 0
            passedBarriersCount.increment()
        } else {
            while (passedBarriersCount.value == oldPassed) passedBarriersCount.value // spin
        }
    }
}

private data class WorkerContext(
        val repeats: Int,
        val syncEvery: Int,
        val tests: List<BasicLitmusTest>,
        val barrier: Barrier = Barrier(2)
)

fun performLitmus(
        testProducer: () -> BasicLitmusTest,
        repeats: Int,
        syncEvery: Int
) {
    val workerContext = WorkerContext(
            repeats = repeats,
            syncEvery = syncEvery,
            tests = List(repeats) { testProducer() },
    )
    println("===== test '${workerContext.tests.first().name}' =====")
    val worker1 = Worker.start()
    val worker2 = Worker.start()

    val future1 = worker1.execute(TransferMode.SAFE /* ignored */, { workerContext }) {
        it.run {
            repeat(this.repeats) { i ->
                if (i % this.syncEvery == 0) {
                    barrier.wait()
                }
                tests[i].actor1()
            }
        }
    }
    val future2 = worker2.execute(TransferMode.SAFE /* ignored */, { workerContext }) {
        it.run {
            repeat(this.repeats) { i ->
                if (i % this.syncEvery == 0) {
                    barrier.wait()
                }
                tests[i].actor2()
            }
        }
    }
    future1.result
    future2.result
    workerContext.tests.forEach { it.arbiter() }

    workerContext.tests
            .map { it.outcome }
            .groupingBy { it }
            .eachCount()
            .entries.sortedByDescending { it.value }
            .forEach { (t, count) ->
                val freq = (100.0 * count / repeats).toString().take(5) + "%"
                println("outcome: $t \t count: $count \t freq: $freq")
            }
}
