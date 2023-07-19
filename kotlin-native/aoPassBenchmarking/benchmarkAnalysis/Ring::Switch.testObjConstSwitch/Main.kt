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

    fun objConstSwitch(u: Int): Int {
        var t: Int
        when (u) {
            Numbers.V1 -> {
                t = 1
            }
            Numbers.V2 -> {
                t = 3
            }
            Numbers.V3 -> {
                t = 4
            }
            Numbers.V4 -> {
                t = 5
            }
            Numbers.V5 -> {
                t = 6
            }
            Numbers.V6 -> {
                t = 7
            }
            Numbers.V7 -> {
                t = 1
            }
            Numbers.V8 -> {
                t = 9
            }
            Numbers.V9 -> {
                t = 1
            }
            Numbers.V10 -> {
                t = 2
            }
            Numbers.V11 -> {
                t = 3
            }
            Numbers.V12 -> {
                t = 4
            }
            Numbers.V13 -> {
                t = 4
            }
            Numbers.V14 -> {
                t = 4
            }
            Numbers.V15 -> {
                t = 435
            }
            Numbers.V16 -> {
                t = 31
            }
            Numbers.V17 -> {
                t = 1
            }
            Numbers.V18 -> {
                t = 1
            }
            Numbers.V19 -> {
                t = 1
            }
            Numbers.V20 -> {
                t = 1
            }
            else -> {
                t = 5
            }
        }
        return t
    }

    lateinit var denseIntData: IntArray

    // Benchmark
    fun testObjConstSwitch() {
        for (i in denseIntData) {
            Blackhole.consume(objConstSwitch(i))
        }
    }
}

fun main() {
    SwitchBenchmark().testObjConstSwitch()
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
