//  Created by Hyun on 2022/03/13.
let N = readLine()!

var arr: [Int] = []
var output = ""
for i in N {
    let int = Int(String(i))!
    arr.append(int)
}

arr.sort(by: >)

for j in arr {
    output += String(j)
}

print(output)
