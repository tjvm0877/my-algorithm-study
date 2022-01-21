//  Created by Hyun on 2022/01/21.

let m = Int(readLine()!)!
var minSum = 0
var check = 0

while check <= m {
    check += 1
    var a : [Int] = []
    var b = check
    var sum = check
    a.append(check)
    
    while b > 0 {
        sum += b % 10
        b /= 10
    }
    
    if sum == m, minSum == 0 {
        minSum = check
    } else if sum == m, sum < minSum {
        minSum = check
    }
    
}

print(minSum)
