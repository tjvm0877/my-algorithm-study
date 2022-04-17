//  Created by Hyun on 2022/02/27.
let n = Int(readLine()!)!
let k = Int(readLine()!)!

var left = 1
var right = k
var count = 0

while left <= right {
    let mid = (left + right) / 2
    var sum = 0
    
    for i in 1...n {
        sum += min(mid / i, n)
    }
    
    if sum >= k {
        count = mid
        right = mid - 1
    } else {
        left = mid + 1
    }
}

print(count)
