//  Created by Hyun on 2022/03/01.

// 사람의 수(N)
let N = Int(readLine()!)!

// 인사를 할 때 잃는 체력 (L)
let L = readLine()!.split(separator: " ").map{ Int($0)! }

// 인사를 할 때 얻는 기쁨 (J)
let J = readLine()!.split(separator: " ").map{ Int($0)! }

var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: 101), count: N+1)

for i in 1...N {
    for j in 1...100 {
        if (j - L[i-1]) > 0 {
            let a = dp[i-1][j]
            let b = dp[i-1][j-L[i-1]] + J[i-1]
            dp[i][j] = max(a, b)
        } else {
            dp[i][j] = dp[i-1][j]
        }
    }
}

print(dp[N][100])
