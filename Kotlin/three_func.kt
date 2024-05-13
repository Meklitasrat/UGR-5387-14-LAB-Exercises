fun findMax(numbers: List<Int>): Int? {
    return numbers.maxOrNull()
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double? {
    if (numbers.isEmpty()) {
        return null
    }
    val sum = numbers.sum()
    return sum / numbers.size
}

fun main() {
    println("Enter a list of integers separated by spaces: ")
    val inputNumbers = readLine()?.split(" ")?.mapNotNull { it.toIntOrNull() }

    if (inputNumbers != null) {
        val maxNumber = findMax(inputNumbers)
        println("Maximum number: $maxNumber")

        val evenNumbers = filterEvenNumbers(inputNumbers)
        println("Even numbers: $evenNumbers")
    } else {
        println("Invalid input. Please enter a valid list of integers.")
    }

    println("Enter a list of doubles separated by spaces: ")
    val inputDoubles = readLine()?.split(" ")?.mapNotNull { it.toDoubleOrNull() }

    if (inputDoubles != null) {
        val average = calculateAverage(inputDoubles)
        if (average != null) {
            println("Average: $average")
        } else {
            println("Cannot calculate average. The list is empty.")
        }
    } else {
        println("Invalid input. Please enter a valid list of numbers.")
    }
}