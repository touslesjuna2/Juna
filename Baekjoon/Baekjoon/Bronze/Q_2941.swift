import Foundation

func Q_2941() {
    var firstLine: [Character] = Array(readLine()!)
    firstLine.append("x") // 더미 문자 추가 (범위 초과 방지)
    firstLine.append("x")
    
    var counting = 0
    var i = 0
    
    while i < firstLine.count - 2 { // 마지막 두 문자 제외
        switch (firstLine[i], firstLine[i+1], firstLine[i+2]) {
        case ("c", "=", _), ("c", "-", _),
             ("d", "-", _), ("l", "j", _),
             ("n", "j", _), ("s", "=", _),
             ("z", "=", _):
            counting += 1
            i += 2 // 두 글자로 이루어진 문자 처리
        case ("d", "z", "="):
            counting += 1
            i += 3 // 세 글자로 이루어진 문자 처리
        default:
            counting += 1
            i += 1 // 일반 문자 처리
        }
    }
    
    print(counting) // 최종 결과 출력
}
