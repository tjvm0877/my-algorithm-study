//  Created by Hyun on 2022/02/11.

let input = Int(readLine()!)!
var sum = (1,0)
for _ in 0..<input {
    var cache = (0,0)
    cache.0 += sum.1
    cache.1 += sum.0 + sum.1
    sum = cache
}
print(sum.0, sum.1)
