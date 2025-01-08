import Foundation

func Q_10950() {
    guard let firstLine = readLine(), let N = Int(firstLine) else {
        return
    }
    
    var inputs: [(Int, Int)] = []
    
    for _ in 0..<N {
        if let line = readLine() {
            let parts = line.split(separator: " ").compactMap { Int($0) }
            if parts.count == 2 {
                inputs.append((parts[0], parts[1]))
            }
        }
    }
    for phase in inputs{
        print(phase.0 + phase.1)
    }
}

