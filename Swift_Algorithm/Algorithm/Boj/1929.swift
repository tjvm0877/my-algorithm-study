//  Created by Hyun on 2022/03/30.
let input = readLine()!.split(separator: " ").map{ Int($0)! }
let M = input[0]
let N = input[1]

var arr: [Int] = Array(repeating: 0, count: N + 1)
for i in 2...N {
    arr[i] = i
}

for i in 2...N {
    if arr[i] == 0 {continue}
    for k in stride(from: i + i, through: N, by: i) {
        arr[k] = 0
    }
}

for i in M...N {
    if arr[i] != 0 {
        print("\(arr[i])")
    }
}
