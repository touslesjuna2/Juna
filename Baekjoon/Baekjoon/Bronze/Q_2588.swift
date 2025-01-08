import Foundation

func Q_2588() {
    // 입력 처리
    let targetNum = Int(readLine()!)! // 첫 번째 입력
    let mainNum = readLine()!        // 두 번째 입력 (문자열 그대로)

    // 자릿수 떼기
    let mainArr = mainNum.map { Int(String($0))! }

    // 자릿수 출력
    let hundreds = mainArr[0]    // 100의 자리
    let tens = mainArr[1]        // 10의 자리
    let ones = mainArr[2]        // 1의 자리

    // 각 자릿수와 targetNum 곱하기
    print(targetNum * ones)
    print(targetNum * tens)
    print(targetNum * hundreds)

    // 전체 곱 출력
    print(targetNum * Int(mainNum)!)
}
