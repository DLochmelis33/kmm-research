const val BENCHMARK_SIZE = 10000

// Benchmark from KT-46482.
open class ChainableBenchmark {

    class IntArrayList(capacity: Int = 7) {
        private var data: IntArray = IntArray(capacity)
        var size: Int = 0
            private set
        val capacity get() = data.size
        private fun grow(minSize: Int) {
            data = data.copyOf(kotlin.math.max(minSize, capacity * 3))
        }
        private fun ensure(count: Int) {
            if (size + count >= capacity) {
                grow(size + count)
            }
        }

        fun add(value: Int) {
            ensure(1)
            data[size++] = value
        }

        fun addChainable(value: Int): IntArrayList {
            add(value)
            return this
        }

        operator fun get(index: Int): Int = data[index]
        operator fun set(index: Int, value: Int) {
            data[index] = value
        }
    }
    val size = BENCHMARK_SIZE * 100

    // Benchmark
    fun testChainable() {
        val list = IntArrayList()
        for (i in 0..size) {
            list.addChainable(i)
        }
        for (i in 0..size) {
            list[i] = i * 2
        }
        var sum = 0
        for (i in 0..size) {
            sum += list[i]
        }
    }
}

fun main() {
    ChainableBenchmark().testChainable()
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
