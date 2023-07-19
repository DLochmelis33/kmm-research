const val BENCHMARK_SIZE = 10000

val SPARSE_SWITCH_CASES = intArrayOf(
    11, 29, 47, 71, 103,
    149, 175, 227, 263, 307,
    361, 487, 563, 617, 677,
    751, 823, 883, 967, 1031
)

const val V1 = 1
const val V2 = 2
const val V3 = 3
const val V4 = 4
const val V5 = 5
const val V6 = 6
const val V7 = 7
const val V8 = 8
const val V9 = 9
const val V10 = 10
const val V11 = 11
const val V12 = 12
const val V13 = 13
const val V14 = 14
const val V15 = 15
const val V16 = 16
const val V17 = 17
const val V18 = 18
const val V19 = 19
const val V20 = 20

object Numbers {
    const val V1 = 1
    const val V2 = 2
    const val V3 = 3
    const val V4 = 4
    const val V5 = 5
    const val V6 = 6
    const val V7 = 7
    const val V8 = 8
    const val V9 = 9
    const val V10 = 10
    const val V11 = 11
    const val V12 = 12
    const val V13 = 13
    const val V14 = 14
    const val V15 = 15
    const val V16 = 16
    const val V17 = 17
    const val V18 = 18
    const val V19 = 19
    const val V20 = 20
}

var VV1 = 1
var VV2 = 2
var VV3 = 3
var VV4 = 4
var VV5 = 5
var VV6 = 6
var VV7 = 7
var VV8 = 8
var VV9 = 9
var VV10 = 10
var VV11 = 11
var VV12 = 12
var VV13 = 13
var VV14 = 14
var VV15 = 15
var VV16 = 16
var VV17 = 17
var VV18 = 18
var VV19 = 19
var VV20 = 20

open class SwitchBenchmark {
    fun sparseIntSwitch(u: Int): Int {
        var t: Int
        when (u) {
            11 -> {
                t = 1
            }
            29 -> {
                t = 2
            }
            47 -> {
                t = 3
            }
            71 -> {
                t = 4
            }
            103 -> {
                t = 5
            }
            149 -> {
                t = 6
            }
            175 -> {
                t = 7
            }
            227 -> {
                t = 1
            }
            263 -> {
                t = 9
            }
            307 -> {
                t = 1
            }
            361 -> {
                t = 2
            }
            487 -> {
                t = 3
            }
            563 -> {
                t = 4
            }
            617 -> {
                t = 4
            }
            677 -> {
                t = 4
            }
            751 -> {
                t = 435
            }
            823 -> {
                t = 31
            }
            883 -> {
                t = 1
            }
            967 -> {
                t = 1
            }
            1031 -> {
                t = 1
            }
            20 -> {
                t = 1
            }
            else -> {
                t = 5
            }
        }
        return t
    }

    lateinit var sparseIntData: IntArray

    // Benchmark
    fun testSparseIntSwitch() {
        for (i in sparseIntData) {
            Blackhole.consume(sparseIntSwitch(i))
        }
    }
}

fun main() {
    SwitchBenchmark().testSparseIntSwitch()
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
