import kotlin.random.Random

fun main() {
    val passwordLength = 8 // Change this value to set the desired password length

    val uppercaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    val lowercaseLetters = "abcdefghijklmnopqrstuvwxyz"
    val numbers = "0123456789"
    val specialSymbols = "!@#$%^&*()_+"

    val allCharacters = uppercaseLetters + lowercaseLetters + numbers + specialSymbols

    var password = ""

    repeat(passwordLength) {
        val randomIndex = Random.nextInt(allCharacters.length)
        val randomChar = allCharacters[randomIndex]
        password += randomChar
    }

    println("Generated Password: $password")
}