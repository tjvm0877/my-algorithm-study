//  Created by Hyun on 2022/02/09.
var inputArr = readLine()!.split(separator: " ").map{ Int($0)! }
var total = 0

for i in inputArr {
    let mul = i * i
    total += mul
}

print(total % 10)
