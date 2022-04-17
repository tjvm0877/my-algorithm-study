//  Created by Hyun on 2022/02/19.
let day = Int(readLine()!)!
let num = readLine()!.split(separator: " ").map{Int($0)!}
var count = 0

for i in num {
    if i == day {
        count += 1
    }
}

print(count)
