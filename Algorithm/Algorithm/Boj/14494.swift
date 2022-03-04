//  Created by Hyun on 2022/03/04.
let input = readLine()!.split(separator: " ").map{ Int($0)! }

let n = input[0]
let m = input[1]
let mod = 1000000007
var dp = [[Int]](repeating: Array(repeating: 0, count: 1002), count: 1002)

for i in 1...1001 {
    dp[i][1] = 1
    dp[1][i] = 1
}

if n != 1, m != 1 {
    for i in 2...n {
        for j in 2...m {
            dp[i][j] = dp[i-1][j] + dp[i][j-1] + dp[i-1][j-1]
            dp[i][j] %= mod
        }
    }
}

print(dp[n][m])
