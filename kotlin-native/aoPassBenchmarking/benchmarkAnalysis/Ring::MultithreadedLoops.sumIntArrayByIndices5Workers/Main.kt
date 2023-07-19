import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

const val BENCHMARK_SIZE = 10000

class MultithreadedLoopsBenchmark(private val numberOfWorkers: Int) {

    private val intArrays: Array<IntArray> = Array(numberOfWorkers) {
        IntArray(BENCHMARK_SIZE) { it }
    }

    private val workers = Array(numberOfWorkers, { _ -> Worker.start() })

    fun runSumIntArrayByIndicesWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { intArrays[i] }, { array ->
                var sum = 0L
                for (j in array.indices) {
                    sum += array[j]
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }
}

fun main() {
    MultithreadedLoopsBenchmark(5).runSumIntArrayByIndicesWorkers()
}
