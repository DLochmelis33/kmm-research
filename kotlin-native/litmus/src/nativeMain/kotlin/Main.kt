
class JCS_01 : BasicLitmusTest<Int>() {

    var x = 0

    // writer
    override fun actor1(outcome1: Outcome<Int>) {
        x = 1
    }

    override fun actor2(outcome2: Outcome<Int>) {
        outcome2.outcome = x
    }

}

fun main() {
    performLitmus(::JCS_01, 1_000_000, 1_000)
}
