class BankAccount {
    let accountNumber: String
    let accountOwner: String
    private var balance: Double
    
    init(accountNumber: String, accountOwner: String, startingBalance: Double) {
        self.accountNumber = accountNumber
        self.accountOwner = accountOwner
        self.balance = startingBalance
    }
    
    func deposit(amount: Double) {
        balance += amount
        print("Deposit of \(amount) successful. New balance: \(balance)")
    }
    
    func withdraw(amount: Double) {
        if balance >= amount {
            balance -= amount
            print("Withdrawal of \(amount) successful. New balance: \(balance)")
        } else {
            print("Insufficient funds. Withdrawal failed.")
        }
    }
    
    func getBalance() -> Double {
        return balance
    }
    
    func displayAccountInfo() {
        print("Account Number: \(accountNumber)")
        print("Account Owner: \(accountOwner)")
        print("Current Balance: \(balance)")
    }
}