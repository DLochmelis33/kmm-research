const val BENCHMARK_SIZE = 10000

class ForLoopsBenchmark {

    private val uLongArray = ULongArray(BENCHMARK_SIZE) {
        it.toULong()
    }

    fun uLongArrayLoop(): ULong {
        var sum: ULong = 0u
        for (e in uLongArray) {
            sum += e
        }
        return sum
    }
}

fun main() {
    ForLoopsBenchmark().uLongArrayLoop()
}
