import kotlin.time.Duration.Companion.seconds

fun main() {
//    val sample1 = listOf(10000, 20000, 30000)
//    val sample2 = listOf(5000, 10000, 15000)
//    println(chiSquaredTest(sample1, sample2))
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

        outer@for (r1 in results) {
            for (r2 in results) {
                if (r1 == r2) continue

                // ensure same order
                val sample1 = r1.map { it.count }
                val sample2 = r1.map { o -> r2.firstOrNull { it.outcome == o.outcome }?.count ?: 0 }

                val accept = chiSquaredTest(sample1, sample2)
                if(!accept) {
                    println("rejected!")
                    r1.prettyPrint()
                    r2.prettyPrint()
                    break@outer
                }
            }
        }
    }
}

//            val singleTestDuration = 3.seconds
//            println("parameters count: ${parameters.size}")
//            println("ETA: T+ ${(singleTestDuration * parameters.size).toComponents { m, s, _ -> "$m m $s s" }}")
