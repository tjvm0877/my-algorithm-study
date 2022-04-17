//  Created by Hyun on 2022/01/17.

// N(스크린 길이), M(바구니 길이)
let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]
let appleCount = Int(readLine()!)!
var appleLocArr : [Int] = []

for _ in 1...appleCount {
    let appleLoc = Int(readLine()!)!
    appleLocArr.append(appleLoc)
}

var boxLeft = 1
var boxRight = m
var moveCount = 0
for i in appleLocArr {
    if i < boxLeft {
        while i < boxLeft {
            boxLeft -= 1
            boxRight -= 1
            moveCount += 1
        }
    } else if i > boxRight {
        while i > boxRight{
            boxLeft += 1
            boxRight += 1
            moveCount += 1
        }
    }
}

print(moveCount)
