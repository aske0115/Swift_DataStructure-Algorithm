import Foundation

func isPrime(_ val:Int) -> Bool {
    let sqrtValue = Int(sqrt(Double(val)))
    
    for i in 2..<sqrtValue + 1{
        if val % i == 0 {
            return false
        }
    }
    return true
}

func printPrimeNumber(_ num:Int) ->[Int]{
    var primeNumber:[Int] = []
    for i in 2..<num {
        if isPrime(i) {
            primeNumber.append(i)
        }
    }
    return primeNumber
}

print(printPrimeNumber(1000).map{$0})


