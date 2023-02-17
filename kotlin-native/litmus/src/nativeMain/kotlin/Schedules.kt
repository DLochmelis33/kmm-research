object AffinitySchedules {
    fun separatePhysicalCores(actorCount: Int) = List(actorCount) { setOf(it * 2) }
    fun separateVirtualCores(actorCount: Int) = List(actorCount) { setOf(it) }
    fun allOnSingleCore(actorCount: Int) = List(actorCount) { setOf(0) }

    // note: grows very quickly, never use for values above 4 or 5
    fun allPossibleSingleCoreSchedules(actorCount: Int): Sequence<List<Set<Int>>> = sequence {
        for (x in 0 until (2 * actorCount).pow(actorCount)) {
            (0 until actorCount).map { a ->
                val core = (x / (2 * actorCount).pow(a)) % (2 * actorCount)
                setOf(core)
            }.let { yield(it) }
        }
    }

    fun allPossibleMultiCoreSchedules(actorCount: Int): Sequence<List<Set<Int>>> = sequence {
        require(actorCount == 2) { "plot 4^(n^2) to see why this requirement is necessary" }
        val setsUpToThree = listOf(
                setOf(0), setOf(1), setOf(2),
                setOf(0, 1), setOf(1, 2), setOf(0, 2),
                setOf(0, 1, 2)
        )
        for (a1 in setsUpToThree) {
            for (a2 in setsUpToThree) {
                yield(listOf(a1, a2))
            }
        }
    }
}

object SyncPeriodSchedules {
    fun quadGrowing(until: Int) = generateSequence(1) { (it * 1.2).toInt() + 1 }.takeWhile { it < until }.toList()
}

fun variateParameters(
        affinitySchedule: List<List<Set<Int>>>,
        syncPeriodSchedule: List<Int>,
) = sequence<LitmusTestParameters> {
    for (affinity in affinitySchedule) {
        for (syncPeriod in syncPeriodSchedule) {
            yield(LitmusTestParameters(affinity, syncPeriod))
        }
    }
}
