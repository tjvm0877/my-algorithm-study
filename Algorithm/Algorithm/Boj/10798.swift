//  Created by Hyun on 2022/03/28.
var inputArr: [[String]] = []
for _ in 0..<5 {
    let a = readLine()!.map{ String($0) }
    inputArr.append(a)
}

let long = max(inputArr[0].count, inputArr[1].count, inputArr[2].count, inputArr[3].count, inputArr[4].count)

for i in 0..<5 {
    if inputArr[i].count < long {
        inputArr[i] = addEmpty(inputArr[i])
    }
}

var result = ""
for i in 0..<long {
    for j in 0..<5 {
        if inputArr[j][i] != "" {
            result += inputArr[j][i]
        }
    }
}

print(result)

func addEmpty(_ arr: [String]) -> [String] {
    var a = arr
    let diff = long - a.count
    
    for _ in 0..<diff {
        a.append("")
    }
    
    return a
}

