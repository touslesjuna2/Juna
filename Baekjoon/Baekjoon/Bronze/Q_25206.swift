import Foundation

func Q_25206() {
    var candidate: [(String, String, String)] = []
    while let line = readLine(){
        var temp: [String] = line.split(separator: " ").compactMap{ String($0) }
        candidate.append((temp[0], temp[1], temp[2]))
    }

    var all_lecture: Double = 0
    var sum_lecture: Double = 0

    for lecture in candidate{
        if lecture.2 == "P"{
            continue
        }else{
            sum_lecture += Double(lecture.1)! * Scoring(Rank: lecture.2)
            all_lecture += Double(lecture.1)!

        }
    }
    print(sum_lecture / all_lecture)
}

func Scoring (Rank: String) -> Double{
    switch Rank{
        case "A+":
            return 4.5
        case "A0":
            return 4.0
        case "B+":
            return 3.5
        case "B0":
            return 3.0
        case "C+":
            return 2.5
        case "C0":
            return 2.0
        case "D+":
            return 1.5
        case "D0":
            return 1.0
        default:
            return 0.0
    }
}


