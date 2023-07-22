package org.jetbrains.ring

import kotlin.native.concurrent.AtomicLong
import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

class MultithreadedLoopsBenchmark(private val numberOfWorkers: Int) {

    private val sharedArraySize = BENCHMARK_SIZE

    private val sharedArray: Array<Int> = Array(sharedArraySize) { it }

    private val sharedIntArray: IntArray = IntArray(sharedArraySize) { it }

    private val sharedCharArray: CharArray = CharArray(sharedArraySize) { it.toChar() }

    private val sharedString: String = sharedCharArray.joinToString()

    private val sharedFloatArray: FloatArray = FloatArray(sharedArraySize) { it.toFloat() }

    private val sharedUIntArray: UIntArray = UIntArray(sharedArraySize) { it.toUInt() }

    private val sharedUShortArray: UShortArray = UShortArray(sharedArraySize) { it.toUShort() }

    private val sharedULongArray: ULongArray = ULongArray(sharedArraySize) { it.toULong() }

    private val arrays: Array<Array<Int>> = Array(numberOfWorkers) {
        Array(BENCHMARK_SIZE) { it }
    }

    private val intArrays: Array<IntArray> = Array(numberOfWorkers) {
        IntArray(BENCHMARK_SIZE) { it }
    }

    private val charArrays: Array<CharArray> = Array(numberOfWorkers) {
        CharArray(BENCHMARK_SIZE) { it.toChar() }
    }

    private val strings: Array<String> = Array(numberOfWorkers) {
        charArrays[it].joinToString()
    }

    private val floatArrays: Array<FloatArray> = Array(numberOfWorkers) {
        FloatArray(BENCHMARK_SIZE) { it.toFloat() }
    }

    private val uIntArrays: Array<UIntArray> = Array(numberOfWorkers) {
        UIntArray(BENCHMARK_SIZE) { it.toUInt() }
    }

    private val uShortArrays: Array<UShortArray> = Array(numberOfWorkers) {
        UShortArray(BENCHMARK_SIZE) { it.toUShort() }
    }

    private val uLongArrays: Array<ULongArray> = Array(numberOfWorkers) {
        ULongArray(BENCHMARK_SIZE) { it.toULong() }
    }

    private val workers = Array(numberOfWorkers, { _ -> Worker.start() })

    fun tearDownWorkers() {
        workers.forEach { it.requestTermination().result }
    }

    // Update shared atomic counter benchmark

    fun runUpdateSharedAtomicCounterWorkers(): Long {
        val cnt = AtomicLong(0)
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { cnt }, {
                for (j in 0..BENCHMARK_SIZE) {
                    it.increment()
                }
            })
        }
        futures.forEach { it.consume {} }
        return cnt.value
    }

    // Update shared struct counter benchmark

    private data class Counter(var value: Long)

    fun runUpdateSharedStructCounterWorkers(): Long {
        val cnt = Counter(0)
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { cnt }, {
                for (j in 0..BENCHMARK_SIZE) {
                    it.value++ // is not thread-safe
                }
            })
        }
        futures.forEach { it.consume {} }
        return cnt.value
    }

    // Update counter benchmark

    fun runUpdateCounterWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, {}, {
                var cnt = 0L
                for (j in 0..BENCHMARK_SIZE) {
                    cnt++
                }
                cnt
            })
        }
        futures.forEach { it.consume {} }
    }

    // Sum shared array benchmarks

    fun runSumSharedArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedArray }, { array ->
                var sum = 0L
                for (e in array) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumSharedIntArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedIntArray }, { intArray ->
                var sum = 0L
                for (e in intArray) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumSharedCharArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedCharArray }, { charArray ->
                var sum = 0L
                for (e in charArray) {
                    sum += e.code
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumSharedStringWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedString }, { string ->
                var sum = 0L
                for (e in string) {
                    sum += e.hashCode()
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumSharedFloatArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedFloatArray }, { floatArray ->
                var sum = 0.0
                for (e in floatArray) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumSharedUIntArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedUIntArray }, { uIntArray ->
                var sum: ULong = 0u
                for (e in uIntArray) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumSharedUShortArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedUShortArray }, { uShortArray ->
                var sum: ULong = 0u
                for (e in uShortArray) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumSharedULongArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedULongArray }, { uLongArray ->
                var sum: ULong = 0u
                for (e in uLongArray) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    // Sum array benchmarks

    fun runSumArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { arrays[i] }, { array ->
                var sum = 0L
                for (e in array) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumIntArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { intArrays[i] }, { array ->
                var sum = 0L
                for (e in array) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumCharArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { charArrays[i] }, { array ->
                var sum = 0L
                for (e in array) {
                    sum += e.code
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumStringWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { strings[i] }, { array ->
                var sum = 0L
                for (e in array) {
                    sum += e.hashCode()
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumFloatArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { floatArrays[i] }, { array ->
                var sum = 0.0
                for (e in array) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumUIntArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { uIntArrays[i] }, { array ->
                var sum: ULong = 0u
                for (e in array) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumUShortArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { uShortArrays[i] }, { array ->
                var sum: ULong = 0u
                for (e in array) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumULongArrayWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { uLongArrays[i] }, { array ->
                var sum: ULong = 0u
                for (e in array) {
                    sum += e
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    // Sum array by indices benchmarks

    fun runSumArrayByIndicesWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { arrays[i] }, { array ->
                var sum = 0L
                for (j in array.indices) {
                    sum += array[j]
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumIntArrayByIndicesWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { intArrays[i] }, { array ->
                var sum = 0L
                for (j in array.indices) {
                    sum += array[j]
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumCharArrayByIndicesWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { charArrays[i] }, { array ->
                var sum = 0L
                for (j in array.indices) {
                    sum += array[j].code
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumStringByIndicesWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { strings[i] }, { string ->
                var sum = 0L
                for (j in string.indices) {
                    sum += string[j].hashCode()
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumFloatArrayByIndicesWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { floatArrays[i] }, { array ->
                var sum = 0.0
                for (j in array.indices) {
                    sum += array[j]
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumUIntArrayByIndicesWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { uIntArrays[i] }, { array ->
                var sum: ULong = 0u
                for (j in array.indices) {
                    sum += array[j]
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumUShortArrayByIndicesWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { uShortArrays[i] }, { array ->
                var sum: ULong = 0u
                for (j in array.indices) {
                    sum += array[j]
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runSumULongArrayByIndicesWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { uLongArrays[i] }, { array ->
                var sum: ULong = 0u
                for (j in array.indices) {
                    sum += array[j]
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    // Consume shared array by segments benchmarks

    private val sharedArraySegmentSize = 10
    private val blockSize = sharedArraySegmentSize * numberOfWorkers
    private val blocksNumber = sharedArraySize / blockSize
    private fun getSharedArraySegments(workerIndex: Int) = List(blocksNumber) { blockIndex ->
        val start = blockIndex * blockSize + workerIndex * sharedArraySegmentSize
        val end = start + sharedArraySegmentSize
        start until end
    }

    private val workerSegments = List(numberOfWorkers) { getSharedArraySegments(it) }


    fun runConsumeSharedArrayBySegmentsWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedArray to workerSegments[i] }, { (array, segments) ->
                for (segmentIndices in segments) {
                    var sum = 0L
                    for (j in segmentIndices) {
                        sum += array[j]
                    }
                    for (j in segmentIndices) {
                        array[j] = sum.toInt()
                    }
                }
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runConsumeSharedIntArrayBySegmentsWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedIntArray to workerSegments[i] }, { (intArray, segments) ->
                for (segmentIndices in segments) {
                    var sum = 0L
                    for (j in segmentIndices) {
                        sum += intArray[j]
                    }
                    for (j in segmentIndices) {
                        intArray[j] = sum.toInt()
                    }
                }
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runConsumeSharedCharArrayBySegmentsWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedCharArray to workerSegments[i] }, { (charArray, segments) ->
                for (segmentIndices in segments) {
                    var sum = 0L
                    for (j in segmentIndices) {
                        sum += charArray[j].code
                    }
                    for (j in segmentIndices) {
                        charArray[j] = sum.toChar()
                    }
                }
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runConsumeSharedStringBySegmentsWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedString to workerSegments[i] }, { (string, segments) ->
                var sum = 0L
                for (segmentIndices in segments) {
                    for (j in segmentIndices) {
                        sum += string[j].hashCode()
                    }
                }
                sum
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runConsumeSharedFloatArrayBySegmentsWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedFloatArray to workerSegments[i] }, { (floatArray, segments) ->
                for (segmentIndices in segments) {
                    var sum = 0.0
                    for (j in segmentIndices) {
                        sum += floatArray[j]
                    }
                    for (j in segmentIndices) {
                        floatArray[j] = sum.toFloat()
                    }
                }
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runConsumeSharedUIntArrayBySegmentsWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedUIntArray to workerSegments[i] }, { (uIntArray, segments) ->
                for (segmentIndices in segments) {
                    var sum: ULong = 0u
                    for (j in segmentIndices) {
                        sum += uIntArray[j]
                    }
                    for (j in segmentIndices) {
                        uIntArray[j] = sum.toUInt()
                    }
                }
            })
        }
        futures.forEach { it.consume {} }
    }

    fun runConsumeSharedUShortArrayBySegmentsWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(
                TransferMode.SAFE,
                { sharedUShortArray to workerSegments[i] },
                { (uShortArray, segments) ->
                    for (segmentIndices in segments) {
                        var sum: ULong = 0u
                        for (j in segmentIndices) {
                            sum += uShortArray[j]
                        }
                        for (j in segmentIndices) {
                            uShortArray[j] = sum.toUShort()
                        }
                    }
                })
        }
        futures.forEach { it.consume {} }
    }

    fun runConsumeSharedULongArrayBySegmentsWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedULongArray to workerSegments[i] }, { (uLongArray, segments) ->
                for (segmentIndices in segments) {
                    var sum: ULong = 0u
                    for (j in segmentIndices) {
                        sum += uLongArray[j]
                    }
                    for (j in segmentIndices) {
                        uLongArray[j] = sum
                    }
                }
            })
        }
        futures.forEach { it.consume {} }
    }

    // Bad ordered accesses benchmarks

    private data class FatStruct(
        var v1: Int,
        var v2: Char,
        var v3: String,
        var v4: Long,
        var v5: Float,
        var v6: UInt,
        var v7: UShort,
        var v8: ULong,
    )

    private val sharedStruct = FatStruct(0, 'a', "", 0, 0f, 0u, 0u, 0u)

    init {
        require(sharedArraySegmentSize >= 7) { "See the code of 'Bad ordered accesses benchmarks'" }
    }

    fun runBadOrderedReadsWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(
                TransferMode.SAFE,
                { Triple(sharedArray, sharedStruct, workerSegments[i]) },
                { (array, struct, segments) ->
                    var sum = 0UL
                    for (segmentIndices in segments) {
                        val j = segmentIndices.first
                        sum += struct.v8
                        sum += array[j + 6].toUInt()
                        sum += struct.v1.toUInt()
                        sum += array[j].toUInt()
                        sum += struct.v7
                        sum += array[j + 5].toUInt()
                        sum += struct.v2.code.toUInt()
                        sum += array[j + 1].toUInt()
                        sum += struct.v6
                        sum += array[j + 4].toUInt()
                        sum += struct.v3.length.toUInt()
                        sum += array[j + 2].toUInt()
                        sum += struct.v5.toUInt()
                        sum += array[j + 3].toUInt()
                        sum += struct.v4.toULong()
                    }
                    sum
                })
        }
        futures.forEach { it.consume {} }
    }

    fun runBadOrderedWritesWorkers() {
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(
                TransferMode.SAFE,
                { Quadruple(sharedArray, sharedStruct, workerSegments[i], i) },
                { (array, struct, segments, i) ->
                    for (segmentIndices in segments) {
                        val j = segmentIndices.first
                        struct.v8 = i.toULong()
                        array[j + 6] = i
                        struct.v1 = i
                        array[j] = i
                        struct.v7 = i.toUShort()
                        array[j + 5] = i
                        struct.v2 = i.toChar()
                        array[j + 1] = i
                        struct.v6 = i.toUInt()
                        array[j + 4] = i
                        struct.v3 = i.toString()
                        array[j + 2] = i
                        struct.v5 = i.toFloat()
                        array[j + 3] = i
                        struct.v4 = i.toLong()
                    }
                })
        }
        futures.forEach { it.consume {} }
    }
}
