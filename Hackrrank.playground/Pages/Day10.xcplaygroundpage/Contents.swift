import Foundation

//guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//    else { fatalError("Bad input") }
let n = 439

let str = String(n, radix: 2)

var maxNumber = 0
var currentNumber = 0

for (_, number) in str.enumerated() {
    if(number == "1") {
        currentNumber = currentNumber + 1
    } else {
        currentNumber = 0
    }
    if (maxNumber < currentNumber) {
        maxNumber = currentNumber
    }
}

print(maxNumber)
