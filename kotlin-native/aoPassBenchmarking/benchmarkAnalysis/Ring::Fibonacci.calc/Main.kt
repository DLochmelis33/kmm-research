const val BENCHMARK_SIZE = 10000

/**
 * This test checks work with long numbers using Fibonacci sequence
 *
 * NB: all three tests here work CRITICALLY (x4...x6) slower than their Java equivalents
 * The reason is iteration on a progression formed as max downTo min or min..max step s.
 * In case of a range min..max primitive types are used by the Kotlin compiler,
 * but when we have a progression it's used directly with its iterator and so.
 */

open class FibonacciBenchmark {

    // Benchmark
    fun calc(): Long {
        // This test works CRITICALLY slower compared with java equivalent (05.03.2015)
        var a = 1L
        var b = 2L
        // Probably for with downTo is the reason of slowness
        for (i in BENCHMARK_SIZE downTo 1) {
            val next = a + b
            a = b
            b = next
        }
        return b
    }
}

fun main() {
    FibonacciBenchmark().calc()
}
