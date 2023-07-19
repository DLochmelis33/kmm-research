const val BENCHMARK_SIZE = 10000

open class LoopBenchmark {
    lateinit var arrayList: List<Value>
    lateinit var array: Array<Value>

    init {
        val list = ArrayList<Value>(BENCHMARK_SIZE)
        for (n in classValues(BENCHMARK_SIZE))
            list.add(n)
        arrayList = list
        array = list.toTypedArray()
    }

    // Benchmark
    fun arrayLoop() {
        for (x in array) {
            Blackhole.consume(x)
        }
    }
}

fun main() {
    LoopBenchmark().arrayLoop()
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

fun classValues(size: Int): Iterable<Value> {
    return intValues(size).map { Value(it) }
}

fun intValues(size: Int): Iterable<Int> {
    return 1..size
}

open class Value(var value: Int) {
    val text = value.toString().reversed()
}
