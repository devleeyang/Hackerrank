import Foundation

//guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//    else { fatalError("Bad input") }
let n = 4

//guard let arrTemp = readLine() else { fatalError("Bad input") }
let arrTemp = "1 4 3 2"
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

for i in (0...arr.count-1).reversed() {
    print(arr[i], terminator:" ")
}
