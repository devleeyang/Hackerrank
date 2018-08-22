import Foundation
import Darwin

let numStrings = 2

func printEvenAndOdd(string: String) {
    fputs("string: " + string + "\n", stderr)
    
    for (n, c) in Array(string).enumerated() {
        if n%2 == 0 {
            print(c, terminator:"")
        }
    }
    print(" ", terminator: "")
    
    for (n, c) in Array(string).enumerated() {
        if n%2 != 0 {
            print(c, terminator:"")
        }
    }

    print()
}

for _ in 1...numStrings {
    let inputString = "Hacker"
    printEvenAndOdd(string: inputString)
}
