fun main() {
    println("Enter the initial price: ")
    val initialPrice = readLine()?.toDoubleOrNull()

    println("Enter the final price: ")
    val finalPrice = readLine()?.toDoubleOrNull()

    if (initialPrice != null && finalPrice != null) {
        val discountPercentage = calculateDiscountPercentage(initialPrice, finalPrice)

        val threshold = 0.5 // Threshold value for the discount percentage

        if (discountPercentage > threshold) {
            println("The discount is too high. Setting the discount to $threshold.")
        }

        println("Discount Percentage: ${discountPercentage * 100}%")
    } else {
        println("Invalid input. Please enter valid numeric values for initial price and final price.")
    }
}

fun calculateDiscountPercentage(initialPrice: Double, finalPrice: Double): Double {
    val discount = initialPrice - finalPrice
    return (discount / initialPrice)
}