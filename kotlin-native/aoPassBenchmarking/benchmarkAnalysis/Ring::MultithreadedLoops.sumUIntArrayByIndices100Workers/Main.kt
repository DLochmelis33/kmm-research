import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

const val BENCHMARK_SIZE = 10000

class MultithreadedLoopsBenchmark(private val numberOfWorkers: Int) {

    private val uIntArrays: Array<UIntArray> = Array(numberOfWorkers) {
        UIntArray(BENCHMARK_SIZE) { it.toUInt() }
    }

    private val workers = Array(numberOfWorkers, { _ -> Worker.start() })

    fun runSumUIntArrayByIndicesWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { uIntArrays[i] }, { array ->
                var sum: ULong = 0u
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
    MultithreadedLoopsBenchmark(100).runSumUIntArrayByIndicesWorkers()
}
