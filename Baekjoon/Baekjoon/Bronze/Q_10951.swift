import Foundation

func Q_10951(){
    var inputs: [(Int, Int)] = []
    while let line = readLine() {
        let temp = line.split(separator: " ").compactMap { Int($0) }
        inputs.append((temp[0], temp[1]))
    }
    
    for i in 0..<inputs.count{
        print(inputs[i].0 + inputs[i].1)
    }
}
