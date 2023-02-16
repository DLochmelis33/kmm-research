////import affinity.get_affinity
////import affinity.set_affinity
//import platform.posix.sleep
//import kotlin.native.concurrent.AtomicInt
//import kotlin.native.concurrent.AtomicReference
//import kotlin.native.concurrent.TransferMode
//import kotlin.native.concurrent.Worker
//import kotlin.properties.ReadWriteProperty
//import kotlin.random.Random
//import kotlin.reflect.KProperty
//
//abstract class BasicLitmusTest(val name: String) {
//    abstract fun actor1()
//    abstract fun actor2()
//    open fun arbiter() {}
//
//    private val outcomeRef = AtomicReference<Any?>(null)
//    var outcome: Any?
//        protected set(v) {
//            if (!outcomeRef.compareAndSet(null, v))
//                throw IllegalStateException("cannot set outcome more than once")
//        }
//        get() = outcomeRef.value
//}
//
//// TODO: allow multiple tests
//object IntMemShuffle {
//    private val idxMap = mutableListOf(0) // TODO: no need for this 0, but OOB (-1) otherwise
//    private val mem = mutableListOf(0)
//    private val random = Random
//
//    fun <T : BasicLitmusTest> variable(): VariableDelegate<T> {
//        mem.add(0)
//        idxMap.add(idxMap.size - 1)
//        val idxToSwap = random.nextInt(idxMap.size)
//        val idxLast = idxMap.size - 1
//        val tmp = idxMap[idxToSwap]
//        idxMap[idxToSwap] = idxMap[idxLast]
//        idxMap[idxLast] = tmp
//
//        return VariableDelegate(mem, idxMap, idxLast)
//    }
//
//    class VariableDelegate<T>(
//            val mem: MutableList<Int>,
//            val idxMap: MutableList<Int>,
//            val idx: Int
//    ) {
//        inline operator fun getValue(thisRef: T, property: KProperty<*>): Int = mem[idxMap[idx]]
//        inline operator fun setValue(thisRef: T, property: KProperty<*>, value: Int) {
//            mem[idxMap[idx]] = value
//        }
//    }
//}
//
//class Barrier(private val threadCount: Int) {
//    private val waitingCount = AtomicInt(0)
//    private val passedBarriersCount = AtomicInt(0)
//
//    fun wait() {
//        val oldPassed = passedBarriersCount.value
//        if (waitingCount.addAndGet(1) == threadCount) {
//            waitingCount.value = 0
//            passedBarriersCount.increment()
//        } else {
//            while (passedBarriersCount.value == oldPassed) passedBarriersCount.value // spin
//        }
//    }
//}
//
//private data class WorkerContext(
//        val repeats: Int,
//        val syncEvery: Int,
//        val tests: List<BasicLitmusTest>,
//        val worker1: Worker,
//        val worker2: Worker,
//        val barrier: Barrier = Barrier(2),
//)
//
//fun Int.checkZero() {
//    if (this != 0) throw IllegalStateException("expected zero")
//}
//
//@OptIn(ExperimentalStdlibApi::class)
//fun performLitmus(
//        testProducer: () -> BasicLitmusTest,
//        repeats: Int,
//        syncEvery: Int
//) {
//    val worker1 = Worker.start()
//    val worker2 = Worker.start()
//    val workerContext = WorkerContext(
//            repeats = repeats,
//            syncEvery = syncEvery,
//            tests = List(repeats) { testProducer() },
//            worker1,
//            worker2,
//    )
//    println("===== test '${workerContext.tests.first().name}' =====")
//
//    val future1 = worker1.execute(TransferMode.SAFE /* ignored */, { workerContext }) {
//
////        val mask1before = get_affinity(it.worker1.platformThreadId)
////        println("mask1before=${mask1before.toString(2)} ($mask1before)")
////        set_affinity(it.worker1.platformThreadId, 5).checkZero()
////        sleep(5)
////        val mask1 = get_affinity(it.worker1.platformThreadId)
////        println("mask1=${mask1.toString(2)} ($mask1)")
//
//        it.run {
//            repeat(this.repeats) { i ->
//                if (i % this.syncEvery == 0) {
//                    barrier.wait()
//                }
//                tests[i].actor1()
//            }
//        }
//    }
//    val future2 = worker2.execute(TransferMode.SAFE /* ignored */, { workerContext }) {
//        it.run {
//            repeat(this.repeats) { i ->
//                if (i % this.syncEvery == 0) {
//                    barrier.wait()
//                }
//                tests[i].actor2()
//            }
//        }
//    }
//    future1.result
//    future2.result
//    workerContext.tests.forEach { it.arbiter() }
//
//    workerContext.tests
//            .map { it.outcome }
//            .groupingBy { it }
//            .eachCount()
//            .entries.sortedByDescending { it.value }
//            .forEach { (t, count) ->
//                val freq = (100.0 * count / repeats).toString().take(5) + "%"
//                println("outcome: $t \t count: $count \t freq: $freq")
//            }
//}
