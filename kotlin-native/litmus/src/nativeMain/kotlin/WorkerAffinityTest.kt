import kotlinx.cinterop.*
import platform.posix.*
import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

fun Int.callCheck() {
    if (this != 0) {
        val err = strerror(errno)!!.toKString()
        throw IllegalStateException("C call error: $err")
    }
}

@OptIn(ExperimentalStdlibApi::class)
fun Worker.setAffinity(cpus: Set<Int>) = memScoped {
    val set = alloc<cpu_set_t>()
    for (cpu in cpus) kaffinity.cpu_set(cpu, set.ptr)
    kaffinity.set_affinity(this@setAffinity.platformThreadId, set.ptr).callCheck()
}

@OptIn(ExperimentalStdlibApi::class)
fun Worker.getAffinity(): Set<Int> = memScoped {
    val set = alloc<cpu_set_t>()
    kaffinity.get_affinity(this@getAffinity.platformThreadId, set.ptr).callCheck()
    return (0 until kaffinity.cpu_setsize())
            .filter { kaffinity.cpu_isset(it, set.ptr) != 0 }
            .toSet()
}

fun main() {
    val w = Worker.start()
    val f = w.execute(TransferMode.SAFE, {}) {
        var sum = 0L
        for(i in 1..3_000_000_000L) sum += i
        sum
    }
    sleep(1)
    w.setAffinity(setOf(5))
    println(w.getAffinity())
    println(f.result)
}
