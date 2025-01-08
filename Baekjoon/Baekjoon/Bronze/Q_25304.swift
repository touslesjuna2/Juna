import Foundation

func Q_25304() {
    let firstLine: Int = Int(readLine()!)!
    let n: Int = Int(readLine()!)!
    var sum: Int = 0
    
    for _ in 1...n{
        let inputs: [Int] = readLine()!.split(separator: " ").compactMap{ Int(String($0)) }
        sum += inputs[0] * inputs[1]
    }
    
    if firstLine == sum{
        print("Yes")
    }else{
        print("No")
    }
}

