//  Created by Hyun on 2022/01/18.
let person = Int(readLine()!)!
var time = readLine()!.split(separator: " ").map{ Int($0)! }

let bestLine = time.sorted { (a, b) -> Bool in
    return a < b
}

var totalTime = 0
var waitTime = 0

for i in bestLine{
    totalTime += i + waitTime
    waitTime += i
}

print(totalTime)
