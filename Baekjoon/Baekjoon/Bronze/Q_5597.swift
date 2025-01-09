import Foundation

func Q_5597() {
    var rollBook: Set<Int> = Set(1...30)  // Use a Set for efficient removal
    
    for _ in 1...28 {  // Read 28 inputs
        let attendant = Int(readLine()!)!
        rollBook.remove(attendant)  // Remove the student who attended
    }
    
    // Print remaining students
    let remainingStudents = rollBook.sorted()  // Sort the remaining students
    for student in remainingStudents {
        print(student)
    }
}
