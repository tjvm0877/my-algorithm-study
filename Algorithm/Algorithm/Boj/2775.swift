//  Created by Hyun on 2022/03/29.
let testCase = Int(readLine()!)!

for _ in 0..<testCase {
    let K = Int(readLine()!)!
    let N = Int(readLine()!)!
    print(sol(N, K))
}

func sol(_ n: Int, _ k: Int) -> Int {
    var dp = Array(repeating: Array(repeating: 1, count: n), count: k+1)
    dp[0][0] = 1
    
    for i in 1..<n {
        dp[0][i] = dp[0][i-1] + 1
    }
    
    for i in 1...k {
        for j in 1..<n {
            dp[i][j] = dp[i-1][j] + dp[i][j-1]
        }
    }
    
    return dp[k][n-1]
}
