class JCS01 : BasicLitmusTest("data races") {

    var x = 0

    override suspend fun actor1() {
        x = 1
    }

    override suspend fun actor2() {
        outcome = x
    }
}

class JCS05 : BasicLitmusTest("coherence") {

    var x = 0

    override suspend fun actor1() {
        x = 1
    }

    override suspend fun actor2() {
        val a = x
        val b = x
        outcome = a to b
    }
}

class JCS06_MP : BasicLitmusTest("causality == MP") {
    var x = 0
    var y = 0

    init {
        setupOutcomes {
            interesting = setOf(1 to 0)
        }
    }

    override suspend fun actor1() {
        x = 1
        y = 1
    }

    override suspend fun actor2() {
        val r1 = y
        val r2 = x
        outcome = r1 to r2
    }
}

class JCS07_SB : BasicLitmusTest("consensus == SB") {
    var x = 0 // by memShuffler!!
    var y = 0 // by memShuffler!!
    var o1 = 0
    var o2 = 0

    init {
        setupOutcomes {
            interesting = setOf(0 to 0)
        }
    }

    override suspend fun actor1() {
        x = 1
        o1 = y
    }

    override suspend fun actor2() {
        y = 1
        o2 = x
    }

    override fun arbiter() {
        outcome = o1 to o2
    }
}

class LB : BasicLitmusTest("load buffering") {

    var x = 0
    var y = 0

    data class DoubleOutcome(var o1: Int, var o2: Int)

    init {
        outcome = DoubleOutcome(0, 0)
    }

    override suspend fun actor1() {
        val r1 = y
        x = 1
        (outcome as DoubleOutcome).o1 = r1
    }

    override suspend fun actor2() {
        val r2 = x
        y = 1
        (outcome as DoubleOutcome).o2 = r2
    }

}

class JCS08 : BasicLitmusTest("finals") {

    class MyObject(v: Int) {
        var a = 0
        var b = 0
        var c = 0

        init {
            a = v
            b = a + v
            c = b + v
        }
    }

    var v = 1
    var o: MyObject? = null

    override suspend fun actor1() {
        o = MyObject(v)
    }

    override suspend fun actor2() {
        val o = this.o
        if (o != null) {
            outcome = Triple(o.a, o.b, o.c)
        } else {
            outcome = Triple(-1, -1, -1)
        }
    }
}

class JCS10 : BasicLitmusTest("oota") {
    var x = 0
    var y = 0

    override suspend fun actor1() {
        if (x == 1) y = 1
    }

    override suspend fun actor2() {
        if (y == 1) x = 1
    }

    override fun arbiter() {
        outcome = x to y
    }
}
