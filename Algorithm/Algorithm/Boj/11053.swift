//  Created by Hyun on 2022/02/28.
let a = readLine()!
let inputArr = readLine()!.split(separator: " ").map{ Int($0)! }
var dp: [Int] = [Int](repeating: 1, count: 1001)

for i in 0..<inputArr.count {
    for j in 0..<i{
        if inputArr[i] > inputArr[j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}

print(dp.max()!)
