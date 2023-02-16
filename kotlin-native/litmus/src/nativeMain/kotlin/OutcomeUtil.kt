val LitmusResult.interestingFrequency: Double
    get() {
        val totalCount = sumOf { it.count }
        val interestingCount = filter { it.type == OutcomeType.INTERESTING }.sumOf { it.count }
        return interestingCount.toDouble() / totalCount
    }

fun LitmusResult.prettyPrint() {
    val totalCount = sumOf { it.count }
    val table = this.sortedByDescending { it.count }.map {
        val freq = it.count.toDouble() / totalCount
        listOf(
                it.outcome.toString(),
                it.type.toString(),
                it.count.toString(),
                if (freq < 1e-5) "<0.001%" else "${(freq * 100).toString().take(6)}%"
        )
    }
    val tableHeader = listOf("outcome", "type", "count", "frequency")
    println((listOf(tableHeader) + table).tableFormat(true))
}

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
