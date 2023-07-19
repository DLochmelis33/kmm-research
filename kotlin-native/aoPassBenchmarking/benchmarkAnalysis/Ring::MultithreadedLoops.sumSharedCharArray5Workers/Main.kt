import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

const val BENCHMARK_SIZE = 10000

class MultithreadedLoopsBenchmark(private val numberOfWorkers: Int) {

    private val sharedArraySize = BENCHMARK_SIZE

    private val sharedCharArray: CharArray = CharArray(sharedArraySize) { it.toChar() }

    private val workers = Array(numberOfWorkers, { _ -> Worker.start() })

    fun runSumSharedCharArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedCharArray }, { charArray ->
                var sum = 0L
                for (e in charArray) {
                    sum += e.code
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }
}

fun main() {
    MultithreadedLoopsBenchmark(5).runSumSharedCharArrayWorkers()
}
