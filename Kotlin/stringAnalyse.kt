fun analyzeString(input: String): Triple<Int, Int, Int> {
    val words = input.split("\\s+".toRegex()).size
    val uppercaseLetters = input.count { it.isUpperCase() }
    val vowels = input.count { it.toLowerCase() in "aeiou" }

    return Triple(words, uppercaseLetters, vowels)
}

fun main() {
    println("Enter a string: ")
    val input = readLine()

    if (input != null) {
        val (wordCount, uppercaseCount, vowelCount) = analyzeString(input)

        println("Word count: $wordCount")
        println("Uppercase letter count: $uppercaseCount")
        println("Vowel count: $vowelCount")
    } else {
        println("Invalid input. Please enter a non-null string.")
    }
}