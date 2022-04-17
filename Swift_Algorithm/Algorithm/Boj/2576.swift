//  Created by Hyun on 2022/03/16.
var inputArr: [Int] = []

for _ in 1...7 {
    let num = Int(readLine()!)!
    
    if num % 2 != 0 {
        inputArr.append(num)
    }
}

if inputArr.count == 0 {
    print(-1)
} else {
    var sum = 0
    inputArr.sort(by: <)
    for i in inputArr {
        sum += i
    }
    print(sum)
    print(inputArr[0])
}
