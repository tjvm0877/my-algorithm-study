//  Created by Hyun on 2022/01/17.

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let n = input[0]
var k = input[1]
var count = 0
var coins: [Int] = []

for _ in 0...n-1 {
    let coin = Int(readLine()!)!
    coins.append(coin)
}

let coinArr = coins.sorted(by: >)

for i in coinArr {
    while k >= i {
        k -= i
        count += 1
    }
}

print(count)
