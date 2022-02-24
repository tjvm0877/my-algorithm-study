//  Created by Hyun on 2022/02/24.
var input = readLine()!.split(separator: " ").map{ Int($0)! }
input.sort(by: >)
var count = 0
var same = 0

for i in 0...1 {
    if input[i] == input[i + 1] {
        count += 1
        same = input[i]
    }
}

if count == 0 {
    print(100 * input[0])
} else if count == 1 {
    print(1000 + (same * 100))
} else if count == 2 {
    print(10000 + (same * 1000))
}
