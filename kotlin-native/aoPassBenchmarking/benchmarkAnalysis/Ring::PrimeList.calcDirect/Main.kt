const val BENCHMARK_SIZE = 10000

/**
 * This class tests linked list performance
 * using prime number calculation algorithms
 */
open class PrimeListBenchmark {
    private var primes: MutableList<Int> = mutableListOf()

    // Benchmark
    fun calcDirect() {
        primes.clear()
        primes.add(2)
        var i = 3
        while (i <= BENCHMARK_SIZE) {
            var simple = true
            for (prime in primes) {
                if (prime * prime > i) {
                    break
                }
                if (i % prime == 0) {
                    simple = false
                    break
                }
            }
            if (simple) {
                primes.add(i)
            }
            i += 2
        }
    }
}

fun main() {
    PrimeListBenchmark().calcDirect()
}
