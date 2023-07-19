import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

const val BENCHMARK_SIZE = 10000

class MultithreadedLoopsBenchmark(private val numberOfWorkers: Int) {

    private val workers = Array(numberOfWorkers, { _ -> Worker.start() })

    private data class Counter(var value: Long)

    fun runUpdateSharedStructCounterWorkers(): Long {
        val cnt = Counter(0)
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { cnt }, {
                for (j in 0..BENCHMARK_SIZE) {
                    it.value++ // is not thread-safe
                }
            })
        }
        futures.forEach { it.consume {} }
        return cnt.value
    }
}

fun main() {
    MultithreadedLoopsBenchmark(5).runUpdateSharedStructCounterWorkers()
}
