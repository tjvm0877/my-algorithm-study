//  Created by Hyun on 2022/01/20.
let inputNum = Int(readLine()!)!

var person: [[Int]] = []
var rank: [Int] = []
for _ in 1...inputNum {
    let size = readLine()!.split(separator: " ").map{ Int($0)! }
    rank.append(1)
    person.append(size)
}

for i in 0...person.count - 1 {
    for j in 0...person.count - 1 {
        if i != j {
            if person[i][0] < person[j][0], person[i][1] < person[j][1] {
                rank[i] += 1
            }
        }
    }
}

var result = ""
for i in rank{
    result += "\(i) "
}
print(result)
