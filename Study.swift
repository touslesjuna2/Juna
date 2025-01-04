// I. Array

// 1. 삭제
// 1) remove(at:)
var a = ["a", "b"]
a.remove(at: 1)
print(a) // ["a"]

// 2) filter { 조건 }
var b = ["1", "b", "d", "d"]
b = b.filter { $0 != "d" }
print(b) // ["1", "b"]

// 3) removeAll { 조건 }
var c = ["1", "b", "d", "d"]
c.removeAll { $0 == "d" }
print(c) // ["1", "b"]

// 4) removeLast()
var d = ["1", "b", "d", "d"]
d.removeLast()
print(d) // ["1", "b", "d"]
// (배열이 비어있으면 에러 발생)

// 5) remove(at: a.count - 1)
var e = ["1", "b", "d", "d"]
e.remove(at: e.count - 1)
print(e) // ["1", "b", "d"]


// 2. 추가
// insert(요소, at: 인덱스)
var arr = ["A"]
arr.insert(" ", at: 0)
print(arr) // [" ", "A"]


// 3. 정렬
let a_val = 2
let b_val = 5
let c_val = 1
let sortedArr = [a_val, b_val, c_val].sorted()
print(sortedArr)  // [1, 2, 5]


// 4. 합산 (reduce)
let numList = [1, 2, 3, 4]
let sum = numList.reduce(0, +)
print(sum)  // 10


// 5. 인덱스 (indices)
let fruits = ["Apple", "Banana", "Cherry"]
for i in fruits.indices {
    print("Index \(i): \(fruits[i])")
}
// Index 0: Apple
// Index 1: Banana
// Index 2: Cherry


// 6. 구간 뒤집기
var myArr = [1, 2, 3, 4, 5]
let start = 1
let end = 3
myArr[start...end].reverse()
print(myArr) // [1, 4, 3, 2, 5]


// II. String

// 1. 문자열 → 배열
// Array(string)
let string1 = "asdf"
let characterArray1 = Array(string1)
print(characterArray1)  // ["a", "s", "d", "f"]

// map { $0 }
let string2 = "asdf"
let characterArray2 = string2.map { $0 }
print(characterArray2)  // ["a", "s", "d", "f"]


// 2. 배열 → 문자열
// 숫자 배열 → 문자열로 이어 붙여서 숫자로 변환
let numbers = [3, 4]
let joined = numbers.map { String($0) }.joined()
print(joined)  // "34"

if let result = Int(joined) {
    print(result)  // 34
}

// Character 배열 → 문자열
let ans: [Character] = ["a", "b", "c"]
let ansJoined = String(ans)
print(ansJoined)  // "abc"


// 3. 알파벳 정렬
var ansArr: [Character] = ["b", "a", "z"]
ansArr.sort()
print(ansArr) // ["a", "b", "z"]


// 4. For문 내림차순 예시
let myString = "abcdefg"
let startnum = 5
let myArray = Array(myString)

for i in (0...startnum).reversed() {
    print(myArray[i])  // f, e, d, c, b, a
}


// III. 입출력 (readLine, split)

import Foundation

// 1) components(separatedBy: " ")
let line = readLine()! // 예: "3 4"
let lineArr = line.components(separatedBy: " ")
let A = Int(lineArr[0])!
let B = Int(lineArr[1])!
print(A + B)

// 2) split(separator: " ")
let arr2 = readLine()!.split(separator: " ").map { Int(String($0))! }
let C = arr2[0]
let D = arr2[1]
print(C + D)


// IV. Switch/Case & 반복문

func solution(_ n: Int, _ control: String) -> Int {
    // 문자열을 문자 배열로 변환
    let controlArr = Array(control)
    var S = n
    
    // 문자 배열을 순회하며 S 값을 조정
    for char in controlArr {
        switch char {
        case "w":
            S += 1
        case "s":
            S -= 1
        case "d":
            S += 10
        case "a":
            S -= 10
        default:
            break
        }
    }
    return S
}


// V. Filter & Set

// 1. 모음만 필터링
let targetArr: [Character] = ["a", "b", "c", "A", "E", "f", "I"]
let vowelSet: Set<Character> = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]

// filter
let vowels = targetArr.filter { vowelSet.contains($0) }
print(vowels) // ["a", "A", "E", "I"]

// for문 + contains
var vowels2: [Character] = []
for character in targetArr {
    if vowelSet.contains(character) {
        vowels2.append(character)
    }
}
print(vowels2) // ["a", "A", "E", "I"]


// 기타 코드 조각

// isEmpty
var ret: [Int] = []
print(ret.isEmpty)  // true

// abs
var mode = 2
mode = abs(mode - 1)
print(mode)  // 1

// enum 사용 시 enumerated()
var my_string_array = ["a", "b", "c"]
let alp = "b"
for (i, value) in my_string_array.enumerated() {
    if String(value) == alp {
        my_string_array[i] = Character(String(value).uppercased())
    }
}

// 부분 문자열 reverse
myArr[start...end].reverse()

// 공백 제거 후 단어 분리
let s = "Hello World"
let words = s.split(separator: " ")
print(words) // ["Hello", "World"]
