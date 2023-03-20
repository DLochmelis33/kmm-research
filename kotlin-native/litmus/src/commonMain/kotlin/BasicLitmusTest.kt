import kotlin.native.concurrent.AtomicReference
import kotlin.reflect.KClass
import kotlin.system.getTimeMillis
import kotlin.time.Duration

abstract class BasicLitmusTest(val name: String) {
    abstract fun actor1()
    abstract fun actor2()
    open fun arbiter() {}

    private val outcomeRef = AtomicReference<Any?>(null)
    var outcome: Any?
        protected set(v) {
            if (!outcomeRef.compareAndSet(null, v))
                throw IllegalStateException("cannot set outcome more than once")
        }
        get() = outcomeRef.value

    companion object {
        var memShuffler: MemShuffler? = null
    }
}

data class OutcomeSetupScope(
        var accepted: Set<Any?> = emptySet(),
        var interesting: Set<Any?> = emptySet(),
        var forbidden: Set<Any?> = emptySet(),
        var forbidOther: Boolean = false,
) {
    fun getType(outcome: Any?) = when {
        outcome in accepted -> OutcomeType.ACCEPTED
        outcome in interesting -> OutcomeType.INTERESTING
        outcome in forbidden || forbidOther -> OutcomeType.FORBIDDEN
        else -> null
    }
}

private val testOutcomesSetup = mutableMapOf<KClass<*>, OutcomeSetupScope>()

fun BasicLitmusTest.setupOutcomes(block: OutcomeSetupScope.() -> Unit) {
    testOutcomesSetup[this::class] = OutcomeSetupScope().apply(block)
}

fun BasicLitmusTest.getOutcomeSetup(): OutcomeSetupScope? = testOutcomesSetup[this::class]

typealias AffinityMap = List<Set<Int>>

data class LitmusTestParameters(
        val affinityMap: AffinityMap,
        val syncPeriod: Int,
        val memShufflerProducer: (() -> MemShuffler)?,
)

enum class OutcomeType { ACCEPTED, INTERESTING, FORBIDDEN }

data class OutcomeInfo(
        val outcome: Any?,
        val count: Int,
        val type: OutcomeType?,
)

typealias LitmusResult = List<OutcomeInfo>

interface LitmusTestRunner {
    fun runTest(
            batchSize: Int,
            parameters: LitmusTestParameters,
            testProducer: () -> BasicLitmusTest
    ): LitmusResult

    fun runTest(
            timeLimit: Duration,
            parameters: LitmusTestParameters,
            testProducer: () -> BasicLitmusTest
    ): LitmusResult {
        val results = mutableListOf<OutcomeInfo>()
        val start = getTimeMillis()
        while (getTimeMillis() - start < timeLimit.inWholeMilliseconds) {
            // TODO: fix magic number
            results.addAll(runTest(10_000, parameters, testProducer))
        }
        return results.merge()
    }
}
