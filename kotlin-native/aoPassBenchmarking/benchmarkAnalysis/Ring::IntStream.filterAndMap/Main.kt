const val BENCHMARK_SIZE = 10000

open class IntStreamBenchmark {
    private var _data: Iterable<Int>? = null
    val data: Iterable<Int>
        get() = _data!!

    init {
        _data = intValues(BENCHMARK_SIZE)
    }

    // Benchmark
    fun filterAndMap() {
        for (item in data.asSequence().filter { filterLoad(it) }.map { mapLoad(it) })
            Blackhole.consume(item)
    }
}

fun main() {
    IntStreamBenchmark().filterAndMap()
}

// kotlin-native/performance/shared/src/main/kotlin-native/common/org/jetbrains/benchmarksLauncher/Utils.kt

class Blackhole {
    @kotlin.native.ThreadLocal
    companion object {
        var consumer = 0
        fun consume(value: Any) {
            consumer += value.hashCode()
        }
    }
}

// kotlin-native/performance/ring/src/main/kotlin/org/jetbrains/ring/Data.kt

fun intValues(size: Int): Iterable<Int> {
    return 1..size
}

fun filterLoad(v: Int): Boolean {
    return v.toString() in "0123456789"
}

fun mapLoad(v: Int): String = v.toString()
