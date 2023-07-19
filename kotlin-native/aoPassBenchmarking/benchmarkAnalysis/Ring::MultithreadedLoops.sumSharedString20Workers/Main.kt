import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

const val BENCHMARK_SIZE = 10000

class MultithreadedLoopsBenchmark(private val numberOfWorkers: Int) {

    private val sharedArraySize = BENCHMARK_SIZE

    private val sharedCharArray: CharArray = CharArray(sharedArraySize) { it.toChar() }

    private val sharedString: String = sharedCharArray.joinToString()

    private val workers = Array(numberOfWorkers, { _ -> Worker.start() })

    fun runSumSharedStringWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedString }, { string ->
                var sum = 0L
                for (e in string) {
                    sum += e.hashCode()
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }
}

fun main() {
    MultithreadedLoopsBenchmark(20).runSumSharedStringWorkers()
}
