//  Created by Hyun on 2022/03/19.
let a = readLine()!.split(separator: " ").map{ Int($0)! }
let b = readLine()!.split(separator: " ").map{ Int($0)! }

var S = 0
var T = 0

for i in 0...3 {
    S += a[i]
    T += b[i]
}

print(max(S, T))
