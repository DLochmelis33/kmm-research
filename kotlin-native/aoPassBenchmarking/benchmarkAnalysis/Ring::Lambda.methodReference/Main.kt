const val BENCHMARK_SIZE = 10000

var globalAddendum = 0

open class LambdaBenchmark {
    private inline fun <T> runLambda(x: () -> T): T = x()
    private fun <T> runLambdaNoInline(x: () -> T): T = x()

    init {
        globalAddendum = Random.nextInt(20)
    }

    // Benchmark
    fun methodReference(): Int {
        var x: Int = 0
        for (i in 0..BENCHMARK_SIZE) {
            x += runLambda(::referenced)
        }
        return x
    }
}

private fun referenced(): Int {
    return globalAddendum
}

fun main() {
    LambdaBenchmark().methodReference()
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
