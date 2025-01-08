import Foundation

func Q_15552() {
    // 첫 번째 줄에서 테스트 케이스의 개수 N을 읽어옵니다.
    guard let firstLine = readLine(), let N = Int(firstLine) else {
        return
    }
    
    // 입력을 저장할 배열을 초기화합니다. 여기서는 튜플 형태로 저장합니다.
    var inputs: [(Int, Int)] = []
    
    // N번 반복하여 각 줄의 두 정수를 읽어옵니다.
    for _ in 0..<N {
        if let line = readLine() {
            // 공백을 기준으로 문자열을 분리하고, 정수로 변환합니다.
            let parts = line.split(separator: " ").compactMap { Int($0) }
            
            // 두 개의 정수가 제대로 읽혔는지 확인한 후 배열에 추가합니다.
            if parts.count == 2 {
                inputs.append((parts[0], parts[1]))
            }
        }
    }
    
    // 각 케이스에 대해 합을 계산하고 출력합니다.
    for i in 1...N {
        let sum = inputs[i - 1].0 + inputs[i - 1].1
        print("Case #\(i): \(sum)")
    }
}

