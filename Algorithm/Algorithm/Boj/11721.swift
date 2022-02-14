//  Created by Hyun on 2022/02/14.
let input = readLine()!

var inputArr: [Character] = []
var output = ""
var count = 0
for i in input {
    inputArr.append(i)
}

for j in 0...inputArr.count - 1 {
    output += String(inputArr[j])
    count += 1
    
    if count == 10 {
        print(output)
        count = 0
        output = ""
    }
}
print(output)
