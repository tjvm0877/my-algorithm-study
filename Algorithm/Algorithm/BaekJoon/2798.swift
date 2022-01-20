//  Created by Hyun on 2022/01/20.

let input = readLine()!.split(separator: " ").map{ Int($0)! }
var numbers = readLine()!.split(separator: " ").map{ Int($0)! }

let goal = input[1]
var close = 0

for i in numbers { // 5 6 7 8 9
    for j in numbers {
        if i != j {
            for k in numbers {
                if i != k, j != k {
                    let sum = i + j + k
                    if sum <= goal, (goal - close) > (goal - sum) {
                        close = sum
                    }
                }
            }
        }
    }
}

print(close)
