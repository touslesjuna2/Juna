//let inputValues = Int(readLine()!)!
//
//let inputValues = readLine()!.split(separator: " ").map { Int($0)! }
//let A = inputValues[0]!
//let B = inputValues[1]!
//
//let inputValues = Int(readLine()!)!
//let inputValues = Int(readLine()!)! //입력 순서도 일치
//
//
//var lines = [Int]()
//
//for _ in 0..<N { lines.append(Int(readLine()!)!) }





//
//* 정수 한 개 입력
//let input = Int(readLine()!)!
//* 정수 여러 개 입력 (스페이스 구분자)
let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))!}
//* 문자열 한 개 입력
//let inputs = readLine()!
//* 문자열 여러 개 입력 (스페이스 구분자)
//let inputs = readLine()!.split(separator: " ")
//또는
//let inputs = readLine()!.split { $0 == " " }
//* 값을 여러 개 받음 (구분자 없음, 예: 123456, "ABCDEF")
//** 숫자인 경우
//let inputs = Array(readLine()!).map { Int(String($0))! }
//** 스트링인 경우
//let inputs = Array(readLine()!).map { String($0)! }
