import Foundation

func Q_10952(){
    var triger: Bool = false
    var inputs: [(Int, Int)] = []
    var temp: [Int] = []

    while triger == false{
        temp = readLine()!.split(separator: " ").compactMap{ Int(String($0))}
        
        if temp[0] == 0 && temp[1] == 0{
            triger = true
            break
        }else{
            inputs.append((temp[0], temp[1]))
        }
    }
    
    for i in 0..<inputs.count{
        print(inputs[i].0 + inputs[i].1)
    }
}
