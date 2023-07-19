const val BENCHMARK_SIZE = 10000

class ForLoopsBenchmark {

    private val intArray: IntArray = IntArray(BENCHMARK_SIZE) {
        it
    }

    fun intArrayLoop(): Long {
        var sum = 0L
        for (e in intArray) {
            sum += e
        }
        return sum
    }
}

fun main() {
    ForLoopsBenchmark().intArrayLoop()
}
