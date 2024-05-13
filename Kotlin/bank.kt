class BankAccount(
    val accountNumber: String,
    var balance: Double
) {
    fun deposit(amount: Double) {
        if (amount > 0) {
            balance += amount
            println("Deposited $amount. New balance: $balance")
        } else {
            println("Invalid deposit amount.")
        }
    }

    fun withdraw(amount: Double) {
        if (amount > 0) {
            if (balance >= amount) {
                balance -= amount
                println("Withdrawn $amount. New balance: $balance")
            } else {
                println("Insufficient funds.")
            }
        } else {
            println("Invalid withdrawal amount.")
        }
    }

    fun printBalance() {
        println("Current balance: $balance")
    }
}

fun main() {
    val account = BankAccount("AC001", 500.0)

    account.printBalance() // Output: Current balance: 500.0

    account.deposit(100.0) // Output: Deposited 100.0. New balance: 600.0

    account.withdraw(200.0) // Output: Withdrawn 200.0. New balance: 400.0

    account.printBalance() // Output: Current balance: 400.0

    account.withdraw(500.0) // Output: Insufficient funds.

    account.deposit(-50.0) // Output: Invalid deposit amount.

    account.withdraw(-100.0) // Output: Invalid withdrawal amount.
}