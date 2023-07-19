const val BENCHMARK_SIZE = 10000

open class IntStreamBenchmark {
    private var _data: Iterable<Int>? = null
    val data: Iterable<Int>
        get() = _data!!

    init {
        _data = intValues(BENCHMARK_SIZE)
    }

    // Benchmark
    fun filterAndCount(): Int {
        return data.asSequence().filter { filterLoad(it) }.count()
    }
}

fun main() {
    IntStreamBenchmark().filterAndCount()
}

// kotlin-native/performance/ring/src/main/kotlin/org/jetbrains/ring/Data.kt

fun intValues(size: Int): Iterable<Int> {
    return 1..size
}

fun filterLoad(v: Int): Boolean {
    return v.toString() in "0123456789"
}
