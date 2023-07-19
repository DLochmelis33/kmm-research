const val BENCHMARK_SIZE = 10000

fun load(value: Int, size: Int): Int {
    var acc = 0
    for (i in 0..size) {
        acc = acc xor value.hashCode()
    }
    return acc
}

open class InlineBenchmark {
    private var value = 2138476523

    // Benchmark
    fun calculate(): Int {
        return load(value, BENCHMARK_SIZE)
    }
}

fun main() {
    InlineBenchmark().calculate()
}
