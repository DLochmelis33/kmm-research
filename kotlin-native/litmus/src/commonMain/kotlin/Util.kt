fun List<List<String>>.tableFormat(hasHeader: Boolean = false): String {
    val columnCount = maxOf { it.size }
    val columnSizes = (0 until columnCount).map { i ->
        this.mapNotNull { it.getOrNull(i) }.maxOf { it.length } + 2
    }
    return buildString {
        this@tableFormat.forEach { row ->
            row.forEachIndexed { i, word ->
                val startPadding = (columnSizes[i] - word.length) / 2
                val endPadding = columnSizes[i] - word.length - startPadding
                append(" ".repeat(startPadding))
                append(word)
                append(" ".repeat(endPadding))
                if (i != row.size - 1) append("|")
            }
            appendLine()
            if (hasHeader && row === this@tableFormat.first()) {
                appendLine("-".repeat(columnSizes.sum() + columnCount - 1))
            }
        }
    }
}

fun Int.pow(power: Int): Int {
    var result = 1
    repeat(power) { result *= this@pow }
    return result
}

// returns true if samples have the same distribution with 0.05 significance level
// written almost completely by ChatGPT :)
fun chiSquaredTest(sample1: List<Int>, sample2: List<Int>): Boolean {
    require(sample1.size == sample2.size) { "incomparable samples" }
    val n = sample1.size // number of categories
    val dof = n - 1 // degrees of freedom
    val obs = Array(2) { IntArray(n) } // observed frequencies

    // fill in observed frequencies
    for (i in 0 until n) {
        obs[0][i] = sample1[i]
        obs[1][i] = sample2[i]
    }

    // calculate expected frequencies
    val total1 = sample1.sum()
    val total2 = sample2.sum()
    val exp = Array(2) { DoubleArray(n) }
    for (i in 0 until n) {
        exp[0][i] = total1.toDouble() * (sample1[i] + sample2[i]) / (total1 + total2)
        exp[1][i] = total2.toDouble() * (sample1[i] + sample2[i]) / (total1 + total2)
    }

    // calculate chi-squared test statistic
    var chiSq = 0.0
    for (i in 0 until n) {
        for (j in 0 until 2) {
            val o = obs[j][i].toDouble()
            val e = exp[j][i]
            chiSq += (o - e) * (o - e) / e
        }
    }

    // chi-squared cdf with significance = 0.05
    val chiSquaredDist = listOf(0.0, 3.841, 5.991, 7.815, 9.488, 11.070)
    val targetChiSq = chiSquaredDist[dof]

    return chiSq < targetChiSq
}
