
fun main() {
    // note: empirically best syncEvery for JCS05 is 3
    performLitmus(::JCS05, 30_000_000, 3)
}
