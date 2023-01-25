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

class JCS06 : BasicLitmusTest("causality") {
    var x = 0
    var y = 0

    override fun actor1() {
        x = 1
        y = 1
    }

    override fun actor2() {
        val r1 = y
        val r2 = x
        outcome = r1 to r2
    }
}

class JCS07 : BasicLitmusTest("consensus") {
    var x = 0
    var y = 0

    data class DoubleOutcome(var o1: Int, var o2: Int)

    init {
        outcome = DoubleOutcome(0, 0)
    }

    override fun actor1() {
        x = 1
        val r1 = y
        (outcome as DoubleOutcome).o1 = r1
    }

    override fun actor2() {
        y = 1
        val r2 = x
        (outcome as DoubleOutcome).o2 = r2
    }
}
