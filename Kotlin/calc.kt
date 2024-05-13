fun main() {
    println("Enter the operation (+, -, *, /): ")
    val operation = readLine()

    println("Enter the first operand: ")
    val operand1 = readLine()?.toDoubleOrNull()

    println("Enter the second operand: ")
    val operand2 = readLine()?.toDoubleOrNull()

    if (operation != null && operand1 != null && operand2 != null) {
        val result = performOperation(operation, operand1, operand2)
        println("Result: $result")
    } else {
        println("Invalid input. Please enter valid values for the operation and operands.")
    }
}

fun performOperation(operation: String, operand1: Double, operand2: Double): Double {
    return when (operation) {
        "+" -> operand1 + operand2
        "-" -> operand1 - operand2
        "*" -> operand1 * operand2
        "/" -> operand1 / operand2
        else -> throw IllegalArgumentException("Invalid operation: $operation")
    }
}