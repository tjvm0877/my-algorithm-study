//  Created by Hyun on 2022/03/15.
let n = Int(readLine()!)!

var DP: [Int] = [Int](repeating: 0, count: 117)

DP[1] = 1
DP[2] = 1
DP[3] = 1

if n > 3 {
    //  f(n) = f(n-1) + f(n-3)
    for i in 4...n {
        DP[i] = DP[i-1] + DP[i-3]
    }
    print(DP[n])
} else {
    print(DP[n])
}
