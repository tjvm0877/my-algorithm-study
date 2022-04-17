//  Created by Hyun on 2022/02/18.
var curTime = readLine()!.split(separator: " ").map{ Int($0)! }
let reqTime = Int(readLine()!)!

curTime[1] += reqTime
curTime[0] += curTime[1] / 60
curTime[1] %= 60

if curTime[0] >= 24 {
    curTime[0] -= 24
}

print("\(curTime[0]) \(curTime[1])")
