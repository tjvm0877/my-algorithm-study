//  Created by Hyun on 2022/03/03.
let N = Int(readLine()!)!

func Fibonacci(_ num: Int) -> Int {
    var dp: [Int] = [Int](repeating: 0, count: 46)
    dp[1] = 1
    
    if num < 2 {
        return dp[num]
    } else {
        for i in 2...num {
            dp[i] = dp[i-1] + dp[i-2]
        }
        return dp[num]
    }
}

print(Fibonacci(N))
