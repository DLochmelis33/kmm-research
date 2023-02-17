import kotlinx.cinterop.*
import platform.posix.*
import kotlin.native.concurrent.Worker

fun Int.callCheck() {
    if (this != 0) {
        val err = strerror(errno)!!.toKString()
        throw IllegalStateException("C call error: $err")
    }
}

fun setAffinity(thread: pthread_t, cpus: Set<Int>) = memScoped {
    require(cpus.isNotEmpty())
    val set = alloc<cpu_set_t>()
    for (cpu in cpus) kaffinity.cpu_set(cpu, set.ptr)
    kaffinity.set_affinity(thread, set.ptr).callCheck()
}

fun getAffinity(thread: pthread_t): Set<Int> = memScoped {
    val set = alloc<cpu_set_t>()
    kaffinity.get_affinity(thread, set.ptr).callCheck()
    return (0 until kaffinity.cpu_setsize())
            .filter { kaffinity.cpu_isset(it, set.ptr) != 0 }
            .toSet()
}

@OptIn(ExperimentalStdlibApi::class)
fun Worker.setAffinity(cpus: Set<Int>) = setAffinity(this.platformThreadId, cpus)

@OptIn(ExperimentalStdlibApi::class)
fun Worker.getAffinity(): Set<Int> = getAffinity(this.platformThreadId)
