const val BENCHMARK_SIZE = 10000

open class ClassListBenchmark {
    private var _data: ArrayList<Value>? = null
    val data: ArrayList<Value>
        get() = _data!!

    init {
        val list = ArrayList<Value>(BENCHMARK_SIZE)
        for (n in classValues(BENCHMARK_SIZE))
            list.add(n)
        _data = list
    }

    // Benchmark
    fun copy(): List<Value> {
        return data.toList()
    }
}

fun main() {
    ClassListBenchmark().copy()
}

// kotlin-native/performance/ring/src/main/kotlin/org/jetbrains/ring/Data.kt

fun classValues(size: Int): Iterable<Value> {
    return intValues(size).map { Value(it) }
}

fun intValues(size: Int): Iterable<Int> {
    return 1..size
}

open class Value(var value: Int) {
    val text = value.toString().reversed()
}
