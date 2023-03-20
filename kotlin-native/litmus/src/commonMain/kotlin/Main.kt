import kotlin.time.Duration.Companion.seconds

fun main() {
    val runner = WorkerTestRunner()

    val parameters = variateParameters(
            listOf(
                    listOf(setOf(4), setOf(7)),
                    listOf(setOf(0), setOf(2)),
            ),
            listOf(50),
            listOf(null /* { MemShuffler(50_000) } */),
    ).toList()
    val singleTestDuration = 10.seconds
    println("parameters count: ${parameters.size}")
    println("ETA: T+ ${(singleTestDuration * parameters.size).toComponents { m, s, _ -> "$m m $s s" }}")
    var cnt = 1
    val results = parameters.associateWith { param ->
        val result = runner.runTest(singleTestDuration, param, ::KindaMP)
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