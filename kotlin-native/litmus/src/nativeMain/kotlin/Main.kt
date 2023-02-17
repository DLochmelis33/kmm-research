import kotlin.time.Duration.Companion.seconds

fun main() {
    val runner = WorkerTestRunner()

    val parameters = variateParameters(
            AffinitySchedules.maybeBestTwoActorSchedules,
            listOf(5, 7, 10, 15, 20, 30, 50),
            listOf({ MemShuffler(50_000) }),
    ).toList()
    val singleTestDuration = 1.seconds
    println("parameters count: ${parameters.size}")
    println("ETA: T+ ${(singleTestDuration * parameters.size).toComponents { m, s, _ -> "$m m $s s" }}")
    var cnt = 1
    val results = parameters.associateWith { param ->
        val result = runner.runTest(singleTestDuration, param, ::JCS07)
        println("done ${cnt++} / ${parameters.size}")
        result
    }
    results.entries
            .sortedByDescending { it.value.interestingFrequency }
            .take(5)
            .forEach {
                println("+ + + + + + + + + + + + + + + + + + + + +")
                println("params: ${it.key}")
                it.value.prettyPrint()
            }
    println("in total:")
    val total = results.values.flatten().merge()
    total.prettyPrint()
}
