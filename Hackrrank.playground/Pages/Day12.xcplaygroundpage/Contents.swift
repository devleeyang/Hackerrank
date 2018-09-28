import Foundation

// Class Person
class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int
    
    // Initializer
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }
    
    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
}

class Student: Person {
    var testScores: [Int]
    
    /*
     *   Initializer
     *
     *   Parameters:
     *   firstName - A string denoting the Person's first name.
     *   lastName - A string denoting the Person's last name.
     *   id - An integer denoting the Person's ID number.
     *   scores - An array of integers denoting the Person's test scores.
     */
    // Write your initializer here
    init(firstName:String, lastName:String, id:Int, scores:Array<Int>) {
        testScores = scores
        super.init(firstName: firstName,lastName: lastName,id: id)
    }
    /*
     *   Method Name: calculate
     *   Return: A character denoting the grade.
     */
    // Write your method here
    func calculate() -> Character {
        var total:Int = 0
        for (_, element)in testScores.enumerated() {
            total = total + element
        }
        let average = total / testScores.count

        switch average {
        case 90...100: return "O"
        case 80..<90: return "E"
        case 70..<80: return "A"
        case 55..<70: return "P"
        case 40..<55: return "D"
        case 0..<40: return "T"
        default: return "T"
        }
    }
} // End of class Student

//let nameAndID = readLine()!.components(separatedBy: " ")
//let _ = readLine()
//let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var arr:Array<Int> = []
let s = Student(firstName: "Memeli", lastName: "Heraldo", id: 8135627, scores: [100,80])

s.printPerson()

print("Grade: \(s.calculate())")

