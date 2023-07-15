const val BENCHMARK_SIZE = 10000

class ForLoopsBenchmark {

    private val charArray: CharArray = CharArray(BENCHMARK_SIZE) {
        it.toChar()
    }

    fun charArrayLoop(): Long {
        var sum = 0L
        for (e in charArray) {
            sum += e.toLong()
        }
        return sum
    }
}

fun main() {
    ForLoopsBenchmark().charArrayLoop()
}
