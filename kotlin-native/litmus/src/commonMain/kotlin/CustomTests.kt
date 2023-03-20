class KindaMP : BasicLitmusTest("kinda mp") {

    var x = 0
    var y = 0

    override fun actor1() {
        y = 5
        x = 1
    }

    override fun actor2() {
        if (x == 1) {
            val xx = x
            val yy = y
            outcome = xx to yy
        }
    }

    init {
        setupOutcomes {
             interesting = setOf(1 to 0)
        }
    }
}
