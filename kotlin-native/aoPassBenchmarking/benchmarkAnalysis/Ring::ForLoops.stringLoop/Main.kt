const val BENCHMARK_SIZE = 10000

class ForLoopsBenchmark {

    private val charArray: CharArray = CharArray(BENCHMARK_SIZE) {
        it.toChar()
    }

    private val string: String = charArray.joinToString()

    fun stringLoop(): Long {
        var sum = 0L
        for (e in string) {
            sum += e.hashCode()
        }
        return sum
    }
}

fun main() {
    ForLoopsBenchmark().stringLoop()
}
