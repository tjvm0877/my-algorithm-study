//  Created by Hyun on 2022/01/01.
import Foundation

var inputNum = Int(readLine()!)!
var weight = 0
var lineCount = 1
var lineLimitNum = 1

if inputNum == 1 {
    print("1/1")
} else{
    while inputNum > lineLimitNum {
        weight += 1
        lineCount += 1
        lineLimitNum += 1
        lineLimitNum = lineLimitNum + weight
    }
    
    let a = lineCount - (lineLimitNum - inputNum)
    let b = (lineCount + 1) - a
    
    if lineCount % 2 == 0 {
        print("\(a)/\(b)")
    }else{
        print("\(b)/\(a)")
    }
}
