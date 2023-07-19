import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

const val BENCHMARK_SIZE = 10000

class MultithreadedLoopsBenchmark(private val numberOfWorkers: Int) {

    private val charArrays: Array<CharArray> = Array(numberOfWorkers) {
        CharArray(BENCHMARK_SIZE) { it.toChar() }
    }

    private val strings: Array<String> = Array(numberOfWorkers) {
        charArrays[it].joinToString()
    }

    private val workers = Array(numberOfWorkers, { _ -> Worker.start() })

    fun runSumStringByIndicesWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { strings[i] }, { string ->
                var sum = 0L
                for (j in string.indices) {
                    sum += string[j].hashCode()
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }
}

fun main() {
    MultithreadedLoopsBenchmark(5).runSumStringByIndicesWorkers()
}
