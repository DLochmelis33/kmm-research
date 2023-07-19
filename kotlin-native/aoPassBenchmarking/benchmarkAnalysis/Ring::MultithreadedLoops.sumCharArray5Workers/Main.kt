import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

const val BENCHMARK_SIZE = 10000

class MultithreadedLoopsBenchmark(private val numberOfWorkers: Int) {

    private val charArrays: Array<CharArray> = Array(numberOfWorkers) {
        CharArray(BENCHMARK_SIZE) { it.toChar() }
    }

    private val workers = Array(numberOfWorkers, { _ -> Worker.start() })

    fun runSumCharArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { charArrays[i] }, { array ->
                var sum = 0L
                for (e in array) {
                    sum += e.code
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }
}

fun main() {
    MultithreadedLoopsBenchmark(5).runSumCharArrayWorkers()
}
