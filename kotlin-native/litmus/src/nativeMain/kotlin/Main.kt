import kotlin.time.Duration.Companion.seconds

fun main() {
    val runner = WorkerTestRunner()

    val parameters = variateParameters(
            AffinitySchedules.allPossibleSingleCoreSchedules(2).toList(),
            listOf(3)
    ).toList()
    val singleTestDuration = 1.seconds
    println("parameters count: ${parameters.size}")
    println("ETA: T+ ${(singleTestDuration * parameters.size).toComponents { m, s, _ -> "$m m $s s" }}")
    var cnt = 0
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
