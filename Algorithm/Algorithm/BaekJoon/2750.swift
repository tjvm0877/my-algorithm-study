//  Created by Hyun on 2022/01/24.
let inputNum = Int(readLine()!)!

var inputArr: [Int] = []

for _ in 1...inputNum {
    let a = Int(readLine()!)!
    inputArr.append(a)
}

let sortedArr = inputArr.sorted(by: <)

for i in sortedArr {
    print(i)
}
