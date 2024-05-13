fun transformToUppercase(strings: List<String>): List<String> {
    return strings.map { it.uppercase() }
}

fun filterNumbersGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { https://github.com/Meklitasrat/UGR-5387-14-LAB-Exercises.gitacc, num -> acc + num }
}

fun main() {
    val strings = listOf("apple", "banana", "orange")
    val transformedStrings = transformToUppercase(strings)
    println("Transformed Strings: $transformedStrings")

    val numbers = listOf(10, 20, 30, 40, 50)
    val threshold = 30
    val filteredNumbers = filterNumbersGreaterThan(numbers, threshold)
    println("Filtered Numbers: $filteredNumbers")

    val sum = calculateSum(numbers)
    println("Sum of Numbers: $sum")
}