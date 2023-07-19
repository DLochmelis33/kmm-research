const val BENCHMARK_SIZE = 10000

val OBJ = Any()

open class ParameterNotNullAssertionBenchmark {

    fun methodWithOneNotnullParameter(p: Any): Any {
        return p
    }

    // Benchmark
    fun invokeOneArgWithNullCheck(): Any {
        return methodWithOneNotnullParameter(OBJ)
    }
}

fun main() {
    ParameterNotNullAssertionBenchmark().invokeOneArgWithNullCheck()
}
