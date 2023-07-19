const val BENCHMARK_SIZE = 10000

/**
 * A class tests decisions of various Euler problems
 *
 * NB: all tests here work slower than Java, probably because of all these functional wrappers
 */
open class EulerBenchmark {

    // Benchmark
    fun problem9(): Long {
        val BENCHMARK_SIZE = BENCHMARK_SIZE // Looks awful but removes all implicit getSize() calls
        for (c in BENCHMARK_SIZE / 3..BENCHMARK_SIZE - 3) {
            val c2 = c.toLong() * c.toLong()
            for (b in (BENCHMARK_SIZE - c) / 2..c - 1) {
                if (b + c >= BENCHMARK_SIZE) {
                    break
                }
                val a = BENCHMARK_SIZE - b - c
                if (a >= b) {
                    continue
                }
                val b2 = b.toLong() * b.toLong()
                val a2 = a.toLong() * a.toLong()
                if (c2 == b2 + a2) {
                    return a.toLong() * b.toLong() * c.toLong()
                }
            }
        }
        return -1L
    }
}

fun main() {
    EulerBenchmark().problem9()
}
