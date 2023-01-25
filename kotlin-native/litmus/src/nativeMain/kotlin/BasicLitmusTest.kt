import platform.posix.sched_yield
import kotlin.native.concurrent.AtomicInt
import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

abstract class BasicLitmusTest<T> {
    abstract fun actor1(outcome1: Outcome<T>)
    abstract fun actor2(outcome2: Outcome<T>)

    data class Outcome<T>(var outcome: T? = null)
}

class Barrier(private val threadCount: Int) {
    private val waitingCount = AtomicInt(0)
    private val passedBarriersCount = AtomicInt(0)

    fun wait() {
        val oldPassed = passedBarriersCount.value
        if(waitingCount.addAndGet(1) == threadCount) {
            waitingCount.value = 0
            passedBarriersCount.increment()
        } else {
            while(passedBarriersCount.value == oldPassed) passedBarriersCount.value // spin
        }
    }
}

private data class WorkerContext<T>(
        val repeats: Int,
        val syncEvery: Int,
        val tests: List<BasicLitmusTest<T>>,
        val outcomes1: Array<BasicLitmusTest.Outcome<T>>,
        val outcomes2: Array<BasicLitmusTest.Outcome<T>>,
        val barrier: Barrier = Barrier(2)
)

fun <T> performLitmus(
        testProducer: () -> BasicLitmusTest<T>,
        repeats: Int,
        syncEvery: Int
) {
    val workerContext = WorkerContext(
            repeats = repeats,
            syncEvery = syncEvery,
            tests = List(repeats) { testProducer() },
            outcomes1 = List(repeats) { BasicLitmusTest.Outcome<T>() }.toTypedArray(),
            outcomes2 = List(repeats) { BasicLitmusTest.Outcome<T>() }.toTypedArray(),
    )
    val worker1 = Worker.start()
    val worker2 = Worker.start()

    val future1 = worker1.execute(TransferMode.SAFE /* ignored */, { workerContext }) {
        it.run {
            repeat(this.repeats) { i ->
                if (i % this.syncEvery == 0) {
                    barrier.wait()
                }
                tests[i].actor1(outcomes1[i])
            }
        }
    }
    val future2 = worker2.execute(TransferMode.SAFE /* ignored */, { workerContext }) {
        it.run {
            repeat(this.repeats) { i ->
                if (i % this.syncEvery == 0) {
                    barrier.wait()
                }
                tests[i].actor2(outcomes2[i])
            }
        }
    }
    future1.result
    future2.result

    println("--- actor 1 outcomes ---")
    workerContext.outcomes1.map { it.outcome }.groupingBy { it }.eachCount().forEach { (t, count) ->
        println("outcome: $t \t count: $count")
    }
    println("--- actor 2 outcomes ---")
    workerContext.outcomes2.map { it.outcome }.groupingBy { it }.eachCount().forEach { (t, count) ->
        println("outcome: $t \t count: $count")
    }
}
