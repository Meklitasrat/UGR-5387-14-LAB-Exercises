fun main() {
    val distance = 10.0 // Distance value in kilometers
    val unit = "kilometers" // Unit of distance

    val convertedDistance = convertDistance(distance, unit, "miles") // Convert distance from kilometers to miles

    println("$distance $unit is equal to $convertedDistance miles")
}

fun convertDistance(distance: Double, fromUnit: String, toUnit: String): Double {
    return when {
        fromUnit == "kilometers" && toUnit == "miles" -> distance * 0.621371
        fromUnit == "miles" && toUnit == "kilometers" -> distance * 1.60934
        else -> throw IllegalArgumentException("Unsupported conversion: $fromUnit to $toUnit")
    }
}