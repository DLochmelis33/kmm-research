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

    val future = w.execute(TransferMode.SAFE, {}) {
        println("he")
        sleep(1)
        println("ha")
    }

    w.setAffinity(setOf(5))
    println(w.getAffinity())
    future.result

    println("end")
}