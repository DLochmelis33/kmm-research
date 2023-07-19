import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

const val BENCHMARK_SIZE = 10000

class MultithreadedLoopsBenchmark(private val numberOfWorkers: Int) {

    private val uLongArrays: Array<ULongArray> = Array(numberOfWorkers) {
        ULongArray(BENCHMARK_SIZE) { it.toULong() }
    }

    private val workers = Array(numberOfWorkers, { _ -> Worker.start() })

    fun runSumULongArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { uLongArrays[i] }, { array ->
                var sum: ULong = 0u
                for (e in array) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }
}

fun main() {
    MultithreadedLoopsBenchmark(5).runSumULongArrayWorkers()
}
