func Q_2525(){
    var now: [Int] = readLine()!.split(separator: " ").compactMap{ Int(String($0))}
    let required_time: Int = Int(readLine()!)!
    // time calculate
    now[1] += required_time
    while now[1] >= 60 {
        now[1] -= 60
        now[0] += 1
    }
    if now[0] >= 24 {
        now[0] -= 24
    }
    print(now[0], now[1])
}


