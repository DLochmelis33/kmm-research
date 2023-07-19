const val BENCHMARK_SIZE = 10000

open class IntArrayBenchmark {
    private var _data: IntArray? = null
    val data: IntArray
        get() = _data!!

    init {
        val list = IntArray(BENCHMARK_SIZE)
        var index = 0
        for (n in intValues(BENCHMARK_SIZE))
            list[index++] = n
        _data = list
    }

    // Benchmark
    fun countFilteredSomeManual(): Int {
        var count = 0
        for (it in data) {
            if (filterSome(it)) {
                count++
            }
        }
        return count
    }
}

fun main() {
    IntArrayBenchmark().countFilteredSomeManual()
}

// kotlin-native/performance/ring/src/main/kotlin/org/jetbrains/ring/Data.kt

fun filterSome(v: Int): Boolean = v % 7 == 0 || v % 11 == 0

fun intValues(size: Int): Iterable<Int> {
    return 1..size
}
