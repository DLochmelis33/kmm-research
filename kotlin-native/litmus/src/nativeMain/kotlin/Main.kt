fun main() {
    // note: empirically best syncEvery
    // JCS05 -> 3
    // JCS06 -> 3 / 10
    // JCS07 -> 10

    val result = WorkerTestRunner()
            .runTest(LitmusTestParameters(5_000_000, emptyList(), 3), ::JCS07)
    result.forEach { println(it) }

//    listOf(3, 5, 10, 15, 20, 50, 100).forEach { syncEvery ->
//        println("\n$syncEvery")
//        performLitmus(::JCS07, 10_000_000, syncEvery)
//    }
}
