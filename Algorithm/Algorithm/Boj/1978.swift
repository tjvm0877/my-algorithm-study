//  Created by Hyun on 2022/03/30.
let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int($0)! }

var output = 0

for i in input {
    var arr: [Int] = []
    
    for j in 1...i {
        if i % j == 0 {
            arr.append(j)
        }
    }
    
    if arr.count == 2 {
        if arr[0] == 1 {
            output += 1
        }
    }
}

print(output)
