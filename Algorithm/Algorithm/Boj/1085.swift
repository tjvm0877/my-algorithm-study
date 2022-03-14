//  Created by Hyun on 2022/03/14.
let input = readLine()!.split(separator: " ").map{ Int($0)! }

let x = input[0]
let y = input[1]
let w = input[2]
let h = input[3]

let a = min(x, w-x)
let b = min(y, h-y)

print(min(a, b))
