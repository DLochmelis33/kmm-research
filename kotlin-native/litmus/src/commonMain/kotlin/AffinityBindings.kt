import kotlin.native.concurrent.Worker

interface AffinityManager {
    fun setAffinity(w: Worker, cpus: Set<Int>)
    fun getAffinity(w: Worker): Set<Int>

    fun scheduleShort2(): List<AffinityMap>
    fun scheduleLong2(): List<AffinityMap>
    fun scheduleUnrestricted2(): List<AffinityMap>
}

expect fun getAffinityManager(): AffinityManager?

fun List<AffinityMap>?.orStub2(): List<AffinityMap> {
    return this ?: listOf(listOf((0..7).toSet(), (0..7).toSet()))
}
