import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

const val BENCHMARK_SIZE = 10000

class MultithreadedLoopsBenchmark(private val numberOfWorkers: Int) {

    private val sharedArraySize = BENCHMARK_SIZE

    private val sharedIntArray: IntArray = IntArray(sharedArraySize) { it }

    private val workers = Array(numberOfWorkers, { _ -> Worker.start() })

    fun runSumSharedIntArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedIntArray }, { intArray ->
                var sum = 0L
                for (e in intArray) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }
}

fun main() {
    MultithreadedLoopsBenchmark(20).runSumSharedIntArrayWorkers()
}
