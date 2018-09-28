import Foundation

/*
let arr: [[Int]] = AnyIterator{ readLine() }.prefix(6).map {
    let arrRow: [Int] = $0.split(separator: " ").map {
        if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return arrItem
        } else { fatalError("Bad input") }
    }
    
    guard arrRow.count == 6 else { fatalError("Bad input") }
    
    return arrRow
}

guard arr.count == 6 else { fatalError("Bad input") }
*/

var maxSum = -64

for (i,elements) in arr.enumerated() {
    if (i == arr.count-2) {
        break
    }
    for (j,_) in elements.enumerated() {
        if (j == arr.count-2) {
            break
        }
        var sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
        if (maxSum < sum) {
            maxSum = sum
        }
        
    }
}

print(maxSum)
