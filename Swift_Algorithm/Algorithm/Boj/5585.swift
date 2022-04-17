//  Created by Hyun on 2022/02/08.
let input = Int(readLine()!)!

var change = 1000 - input
var count = 0
// 500엔, 100엔, 50엔, 10엔, 5엔, 1엔

while change > 0 {
    if change >= 500 {
        count += 1
        change -= 500
    } else if change >= 100 {
        count += 1
        change -= 100
    } else if change >= 50 {
        count += 1
        change -= 50
    } else if change >= 10 {
        count += 1
        change -= 10
    } else if change >= 5 {
        count += 1
        change -= 5
    } else if change >= 1 {
        count += 1
        change -= 1
    }
}

print(count)
