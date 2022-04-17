//  Created by Hyun on 2022/03/05.
import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let n = input[0]
let k = input[1]
var coins: [Int] = []

for _ in 0..<n {
    let coin = Int(readLine()!)!
    coins.append(coin)
}

var dp = [Int](repeating: 0, count: k+1)
dp[0] = 1

for i in coins{
    for j in 1...k{
        if i <= j {
            dp[j] += dp[j-i]
            if dp[j] > Int(pow(2.0, 31.0)){
                dp[j] = 0
            }
        }
    }
}

print(dp[k])
