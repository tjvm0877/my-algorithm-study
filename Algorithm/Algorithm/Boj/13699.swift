//  Created by Hyun on 2022/03/15.
let n = Int(readLine()!)!
var DP: [Int] = [Int](repeating: 0, count: 36)

DP[0] = 1

if n == 0 {
    print(DP[0])
} else {
    for i in 1...n {
        var num = 0
        
        for j in 0...i-1 {
            num += DP[j] * DP[(i-1) - j]
        }
        
        DP[i] = num
    }
    print(DP[n])
}

