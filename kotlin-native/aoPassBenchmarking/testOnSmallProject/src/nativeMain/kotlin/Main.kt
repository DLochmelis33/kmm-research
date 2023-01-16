import kotlin.system.measureTimeMillis

fun main() {
    var sum = 0
    val arr = arrayOf(1, 2, 3, 4, 5)
    val time = measureTimeMillis {
        repeat(100_000_000) {
            sum += arr[it % 5]
        }
    }
    println("sum=$sum time=$time")
}