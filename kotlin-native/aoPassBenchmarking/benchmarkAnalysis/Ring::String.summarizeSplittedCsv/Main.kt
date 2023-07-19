const val BENCHMARK_SIZE = 10000

open class StringBenchmark {
    private var _data: ArrayList<String>? = null
    val data: ArrayList<String>
        get() = _data!!
    var csv: String = ""

    init {
        val list = ArrayList<String>(BENCHMARK_SIZE)
        for (n in stringValues(BENCHMARK_SIZE))
            list.add(n)
        _data = list
        csv = ""
        for (i in 1..BENCHMARK_SIZE - 1) {
            val elem = Random.nextDouble(67108864.0) // MODIFIED: 2**26 as a boundary
            csv += elem
            csv += ","
        }
        csv += 0.0
    }

    // Benchmark
    open fun summarizeSplittedCsv(): Double {
        val fields = csv.split(",")
        var sum = 0.0
        for (field in fields) {
            sum += field.toDouble()
        }
        return sum
    }
}

fun main() {
    StringBenchmark().summarizeSplittedCsv()
}

// kotlin-native/performance/shared/src/main/kotlin-native/common/org/jetbrains/benchmarksLauncher/Utils.kt

class Random constructor() {
    @kotlin.native.ThreadLocal
    companion object {
        var seedInt = 0
        fun nextInt(boundary: Int): Int {
            seedInt = (3 * seedInt + 11) % boundary
            return seedInt
        }

        var seedDouble: Double = 0.1
        fun nextDouble(boundary: Double): Double {
            seedDouble = (7.0 * seedDouble + 7.0) % boundary
            return seedDouble
        }
    }
}

// kotlin-native/performance/ring/src/main/kotlin/org/jetbrains/ring/Data.kt

fun intValues(size: Int): Iterable<Int> {
    return 1..size
}

fun stringValues(size: Int): Iterable<String> {
    return intValues(size).map { it.toString() }
}
