import Foundation

//let numStrings = Int(readLine()!)!
let numStrings = 3
var dic:Dictionary<String,String> = [:]

func setDictionaryFromInputString(string: String) {
    let subString = string.split(separator: " ")
    dic.updateValue(String(subString[1]), forKey: String(subString[0]))
}
for _ in 1...numStrings {
    let inputString = "sam 99912222"
    setDictionaryFromInputString(string: inputString)
}

while let inputString = readLine() {
    if let input = dic[inputString] {
        print("\(inputString)=\(input)")
    } else {
        print("Not found")
    }
}
