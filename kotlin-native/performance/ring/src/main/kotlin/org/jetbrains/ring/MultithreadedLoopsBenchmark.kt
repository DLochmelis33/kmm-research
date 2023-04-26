package org.jetbrains.ring

import kotlin.native.concurrent.AtomicLong
import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

class MultithreadedLoopsBenchmark {

    private val numberOfWorkers = 5

    private val sharedArray: Array<Int> = Array(BENCHMARK_SIZE) { it }

    private val sharedIntArray: IntArray = IntArray(BENCHMARK_SIZE) { it }

    private val arrays: Array<Array<Int>> = Array(numberOfWorkers) {
        Array(BENCHMARK_SIZE) { it }
    }

    private val intArrays: Array<IntArray> = Array(numberOfWorkers) {
        IntArray(BENCHMARK_SIZE) { it }
    }

    private val charArrays: Array<CharArray> = Array(numberOfWorkers) {
        CharArray(BENCHMARK_SIZE) { it.toChar() }
    }

    private val uLongArrays: Array<ULongArray> = Array(numberOfWorkers) {
        ULongArray(BENCHMARK_SIZE) { it.toULong() }
    }

    private val workers = Array(numberOfWorkers, { _ -> Worker.start() })

    fun tearDownWorkers() {
        workers.forEach { it.requestTermination().result }
    }

    // Update shared counter benchmark

    fun runUpdateSharedCounterWorkers(): Long {
        val cnt = AtomicLong(0)
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { cnt }, {
                for (i in 0..BENCHMARK_SIZE) {
                    it.increment()
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
                for (i in 0..BENCHMARK_SIZE) {
                    cnt++
                }
                cnt
            })
        }
        futures.forEach { it.consume {} }
    }

    // Sum shared array benchmarks

    fun runSumSharedArrayWorkers(): Long {
        val sum = AtomicLong(0)
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedArray to sum }, { (array, sum) ->
                for (e in array) {
                    sum.addAndGet(e)
                }
            })
        }
        futures.forEach { it.consume {} }
        return sum.value
    }

    fun runSumSharedIntArrayWorkers(): Long {
        val sum = AtomicLong(0)
        val futures = Array(numberOfWorkers) { i ->
            workers[i].execute(TransferMode.SAFE, { sharedIntArray to sum }, { (intArray, sum) ->
                for (e in intArray) {
                    sum.addAndGet(e)
                }
            })
        }
        futures.forEach { it.consume {} }
        return sum.value
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
                    sum += e.toLong()
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
}
