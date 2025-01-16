func Q_2566(){
    var matrixs: [[Int]] = []
    var M: Int = 0
    
    //Making Matrixs
    while let inputs = readLine(){
        let temp: [Int] = inputs.split(separator: " ").compactMap{ Int($0) }
        matrixs.append(temp)
        M += 1
    }
    
    // Max Search
    let N: Int = matrixs[0].count
    var maxNum: Int = 0
    var iNum: Int = 0
    var jNum: Int = 0
    
    for i in 0..<M{
        for j in 0..<N{
            if matrixs[i][j] >= maxNum{
                iNum = i + 1
                jNum = j + 1
                maxNum = matrixs[i][j]
            }
        }
    }
    
    print(maxNum)
    print(iNum, jNum)
}
