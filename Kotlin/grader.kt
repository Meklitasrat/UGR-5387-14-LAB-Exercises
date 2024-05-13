fun main() {
    println("Enter the numeric grade (between 0 and 100): ")
    val numericGrade = readLine()?.toDoubleOrNull()

    if (numericGrade != null) {
        val letterGrade = calculateLetterGrade(numericGrade)
        println("Letter grade: $letterGrade")
    } else {
        println("Invalid input. Please enter a valid numeric grade.")
    }
}

fun calculateLetterGrade(numericGrade: Double): String {
    return when {
        numericGrade >= 90 -> "A"
        numericGrade >= 80 -> "B"
        numericGrade >= 70 -> "C"
        numericGrade >= 60 -> "D"
        else -> "F"
    }
}