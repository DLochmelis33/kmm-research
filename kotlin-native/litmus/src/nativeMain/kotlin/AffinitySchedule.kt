fun affinitySequence(cpuCount: Int, actorCount: Int): Sequence<List<Set<Int>>> = sequence {
    assert(actorCount * 2 < cpuCount)
    (0 until actorCount).map { setOf(it * 2) }.also { yield(it) } // each on separate physical core
    (0 until actorCount).map { setOf(it) }.also { yield(it) } // each on separate virtual core
    // TODO: add more variants
}
