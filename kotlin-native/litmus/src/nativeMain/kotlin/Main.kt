fun main() {
    // note: empirically best syncEvery
    // JCS05 -> 3
    // JCS06 -> 3 / 10
    // JCS07 -> 10

    val affinities = affinitySequence(12, 2)
    val runner = WorkerTestRunner()
    val result = runner.runTest(
            1_000_000,
            LitmusTestParameters(affinities.first(), 3),
            ::JCS07
    )
    result.prettyPrint()

//    listOf(3, 5, 10, 15, 20, 50, 100).forEach { syncEvery ->
//        println("\n$syncEvery")
//        performLitmus(::JCS07, 10_000_000, syncEvery)
//    }
}
