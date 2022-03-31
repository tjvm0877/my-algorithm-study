//  Created by Hyun on 2022/03/31.
let testCase = Int(readLine()!)!
var result:[Int] = []
for _ in 0..<testCase {
    let applicant = Int(readLine()!)!
    var score: [[Int]] = []
    for _ in 0..<applicant {
        let a = readLine()!.split(separator: " ").map{ Int($0)! }
        score.append(a)
    }
    result.append(PassJudge(score))
}

for i in result{
    print(i)
}

func PassJudge(_ n: [[Int]]) -> Int{
    var arr = n
    arr.sort{ (a,b) -> Bool in
        return a[0] > b[0]
    }
    
    
    return 0
}
