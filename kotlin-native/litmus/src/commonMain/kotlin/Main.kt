import kotlin.time.Duration.Companion.seconds

fun main() {
//    val sample1 = listOf(10200, 20000, 30000)
//    val sample2 = listOf(5000, 10001, 15000)
//    val sample3 = listOf(1000, 2000, 3050)
//    val sample4 = listOf(3000, 6000, 8900)
//    println(chiSquaredTest(listOf(sample1, sample2, sample3, sample4)))
    distributionTest()
}

fun distributionTest() {
    val runner = WorkerTestRunner
    val parameters = variateParameters(
            getAffinityManager()?.scheduleShort2().orStub2(),
            generateSequence(2) { it * 2 }.take(8).toList(),
            listOf(null /* { MemShuffler(50_000) } */),
    ).toList()

    for (testCount in generateSequence(1000) { it * 2 }.take(10)) {
        println("test count: $testCount...")

        val results = List(10) {
            parameters.map { param ->
                runner.runTest(testCount, param, ::JCS07_SB)
            }.flatten().merge()
        }

        val outcomes = results.map { it.map { it.outcome }.toSet() }.reduce(Set<Any?>::union).toList()
        val samples = results.map { r -> outcomes.map { o -> r.firstOrNull { it.outcome == o }?.count ?: 0 } }
        val accepted = chiSquaredTest(samples)
        println(if (accepted) "accepted" else "rejected")

//        outer@for (r1 in results) {
//            for (r2 in results) {
//                if (r1 == r2) continue
//
//                // ensure same order
//                val sample1 = r1.map { it.count }
//                val sample2 = r1.map { o -> r2.firstOrNull { it.outcome == o.outcome }?.count ?: 0 }
//
//                val accept = chiSquaredTest(sample1, sample2)
//                if(!accept) {
//                    println("rejected!")
//                    r1.prettyPrint()
//                    r2.prettyPrint()
//                    break@outer
//                }
//            }
//        }
    }
}

//            val singleTestDuration = 3.seconds
//            println("parameters count: ${parameters.size}")
//            println("ETA: T+ ${(singleTestDuration * parameters.size).toComponents { m, s, _ -> "$m m $s s" }}")
