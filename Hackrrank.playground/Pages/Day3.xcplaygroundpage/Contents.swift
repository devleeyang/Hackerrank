import Foundation


/*
guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }
 문제에서는 문자를 받아옴
 그러니 플그에선 1~100 사이의 임의의 수로 변경.
 */
let N = arc4random_uniform(100) + 1;

func printisWeirdFromNumber(){
    if N%2 != 0 {
        return print("Weird")
    } else {
        if (N >= 6) && (N <= 20) {
            return print("Weird")
        } else {
            return print("Not Weird")
        }
    }
    /*
     수식계산 할 때 들여쓰기 틀려서 error 난 코드
     스위프트는 Objective-C와 달리 들여쓰기가 틀리면 컴파일 에러가 발생.
     if N%2 !=0 {
     return print("Weird")
     } else {
     if (N >= 6 && N <= 20) {
     return print("Weird")
     } else {
     return print("Not Weird")
     }
     }
     */
}

printisWeirdFromNumber()
