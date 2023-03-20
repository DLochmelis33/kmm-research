import kotlin.native.concurrent.Worker

interface AffinityManager {
    fun setAffinity(w: Worker, cpus: Set<Int>)
    fun getAffinity(w: Worker): Set<Int>
}

expect fun getAffinityManager(): AffinityManager?
