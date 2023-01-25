class JCS01 : BasicLitmusTest("data races") {

    var x = 0

    override fun actor1() {
        x = 1
    }

    override fun actor2() {
        outcome = x
    }
}

class JCS05 : BasicLitmusTest("coherence") {
    class Holder(var a: Int, var trap: Int)

    val holder1 = Holder(0, 0)
    val holder2 = holder1

    override fun actor1() {
        holder1.a = 1
    }

    override fun actor2() {
        val h1 = holder1
        val h2 = holder2

        h1.trap = 1
        h2.trap = 1

        val r1 = h1.a
        val r2 = h2.a
        outcome = r1 to r2
    }
}