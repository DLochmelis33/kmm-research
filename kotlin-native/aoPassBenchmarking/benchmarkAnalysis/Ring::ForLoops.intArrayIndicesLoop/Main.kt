const val BENCHMARK_SIZE = 10000

class ForLoopsBenchmark {

    private val intArray: IntArray = IntArray(BENCHMARK_SIZE) {
        it
    }

    fun intArrayIndicesLoop(): Long {
        var sum = 0L
        for (i in intArray.indices) {
            sum += intArray[i]
        }
        return sum
    }
}

fun main() {
    ForLoopsBenchmark().intArrayIndicesLoop()
}
