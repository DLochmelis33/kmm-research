import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

const val BENCHMARK_SIZE = 10000

class MultithreadedLoopsBenchmark(private val numberOfWorkers: Int) {

    private val sharedArraySize = BENCHMARK_SIZE

    private val sharedULongArray: ULongArray = ULongArray(sharedArraySize) { it.toULong() }

    private val workers = Array(numberOfWorkers, { _ -> Worker.start() })

    fun runSumSharedULongArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedULongArray }, { uLongArray ->
                var sum: ULong = 0u
                for (e in uLongArray) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }
}

fun main() {
    MultithreadedLoopsBenchmark(5).runSumSharedULongArrayWorkers()
}
