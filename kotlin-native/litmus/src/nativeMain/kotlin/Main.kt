fun main() {
    // note: empirically best syncEvery
    // JCS05 -> 3
    // JCS06 -> 3 / 10
    // JCS07 -> 10

    performLitmus(::LB, 30_000_000, 3)

//    listOf(3, 5, 10, 15, 20, 50, 100).forEach { syncEvery ->
//        println("\n$syncEvery")
//        performLitmus(::JCS07, 10_000_000, syncEvery)
//    }
}
