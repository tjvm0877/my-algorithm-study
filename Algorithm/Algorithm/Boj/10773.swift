//  Created by Hyun on 2022/02/06.
let input = Int(readLine()!)!
var inputArr: [Int] = []
var total = 0

for _ in 1...input {
    let num = Int(readLine()!)!
    if num != 0 {
        inputArr.append(num)
    } else if inputArr.count != 0 {
        inputArr.removeLast()
    }
}

for i in inputArr {
    total += i
}

print(total)
