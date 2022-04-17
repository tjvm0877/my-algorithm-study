//  Created by Hyun on 2022/02/10.
let input = Int(readLine()!)!
var a = readLine()!.split(separator: " ").map{ Int($0)! }
var b = readLine()!.split(separator: " ").map{ Int($0)! }

a.sort(by: >)
b.sort(by: <)

var total = 0

for i in 0..<input {
    total += a[i] * b[i]
}

print(total)
