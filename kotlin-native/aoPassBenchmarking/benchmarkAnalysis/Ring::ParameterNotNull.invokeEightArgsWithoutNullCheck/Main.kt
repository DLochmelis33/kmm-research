const val BENCHMARK_SIZE = 10000

val OBJ = Any()

open class ParameterNotNullAssertionBenchmark {

    private fun privateMethodWithEightNotnullParameters(p: Any, p2: Any, p3: Any, p4: Any, p5: Any, p6: Any, p7: Any, p8: Any): Any {
        return p
    }

    // Benchmark
    fun invokeEightArgsWithoutNullCheck(): Any {
        return privateMethodWithEightNotnullParameters(OBJ, OBJ, OBJ, OBJ, OBJ, OBJ, OBJ, OBJ)
    }
}

fun main() {
    ParameterNotNullAssertionBenchmark().invokeEightArgsWithoutNullCheck()
}
