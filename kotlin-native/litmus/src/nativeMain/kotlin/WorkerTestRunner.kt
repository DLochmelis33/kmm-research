import kotlin.native.concurrent.TransferMode
import kotlin.native.concurrent.Worker

class WorkerTestRunner : LitmusTestRunner {
    private data class WorkerContext(
            val tests: List<BasicLitmusTest>,
            val syncPeriod: Int,
            val barrier: SpinBarrier,
    )

    override fun runTest(
            batchSize: Int,
            parameters: LitmusTestParameters,
            testProducer: () -> BasicLitmusTest
    ): LitmusResult {
        val actorFunctions: List<(BasicLitmusTest) -> Unit> = listOf(
                BasicLitmusTest::actor1,
                BasicLitmusTest::actor2,
        )
        require(actorFunctions.size == parameters.affinityMap.size)
        BasicLitmusTest.memShuffler = parameters.memShufflerProducer?.invoke()
        val testBatch = List(batchSize) { testProducer() }
        val workerContext = WorkerContext(testBatch, parameters.syncPeriod, SpinBarrier(actorFunctions.size))
        actorFunctions.mapIndexed { i, actorFun ->
            val worker = Worker.start()
            val cpuSet = parameters.affinityMap[i]
            worker.setAffinity(cpuSet)
            require(worker.getAffinity() == cpuSet)
            worker.execute(
                    TransferMode.SAFE /* ignored */,
                    { actorFun to workerContext }
            ) { (actorFun, workerContext) ->
                workerContext.apply {
                    var cnt = 0
                    for (test in tests) {
                        if (cnt == syncPeriod) {
                            cnt = 0
                            barrier.wait()
                        }
                        actorFun(test)
                        cnt++
                    }
                }
            }
            worker.requestTermination()
        }.forEach { it.result }
        for (test in testBatch) test.arbiter()
        val outcomeSetup = testBatch.first().getOutcomeSetup()
        val result = testBatch
                .map { it.outcome }
                .groupingBy { it }
                .eachCount()
                .map { (outcome, count) ->
                    OutcomeInfo(outcome, count, outcomeSetup?.getType(outcome))
                }
        return result
    }
}
