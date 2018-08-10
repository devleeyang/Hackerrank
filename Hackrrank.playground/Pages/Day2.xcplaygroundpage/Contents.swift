import Foundation

// Complete the solve function below.
func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    let tip = (meal_cost * Double(tip_percent))/100
    let tax = (meal_cost * Double(tax_percent))/100
    var totalCost = meal_cost + tip + tax
    totalCost.round()
    print("The total meal cost is \(Int(totalCost)) dollars.")
}

/*
 readLine은 플그에서 사용 불가
guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }
*/
let meal_cost = 12.00
let tip_percent = 20
let tax_percent = 8

solve(meal_cost: meal_cost, tip_percent: tip_percent, tax_percent: tax_percent)
