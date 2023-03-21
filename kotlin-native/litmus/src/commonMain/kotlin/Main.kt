import kotlin.time.Duration.Companion.seconds

fun main() {
    val runner = WorkerTestRunner

    val parameters = variateParameters(
            getAffinityManager()?.scheduleUnrestricted2().orStub2(),
            generateSequence(2) { it * 2 }.take(8).toList(),
            listOf(null /* { MemShuffler(50_000) } */),
    ).toList()
    val singleTestDuration = 3.seconds
    println("parameters count: ${parameters.size}")
    println("ETA: T+ ${(singleTestDuration * parameters.size).toComponents { m, s, _ -> "$m m $s s" }}")
    var cnt = 1
    val results = parameters.map { param ->
        val result = runner.runTest(singleTestDuration, param, ::KindaMP)
        println("done ${cnt++} / ${parameters.size}")
        result
    }
    println("in total:")
    val total = results.flatten().merge()
    total.prettyPrint()
}
