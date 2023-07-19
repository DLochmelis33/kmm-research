const val BENCHMARK_SIZE = 10000

open class CompanionObjectBenchmark {
    // Benchmark
    fun invokeRegularFunction() {
        regularCompanionObjectFunction("")
    }

    companion object {
        fun regularCompanionObjectFunction(o: Any): Any {
            return o
        }
    }
}

fun main() {
    CompanionObjectBenchmark().invokeRegularFunction()
}
