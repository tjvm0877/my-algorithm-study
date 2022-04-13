//  Created by Hyun on 2022/04/12.
let N = Int(readLine()!)!
var axis: [[Int]] = []
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    axis.append(input)
}

axis.sort{ (a,b) -> Bool in
    if a[1] == b[1] {
        return a[0] < b[0]
    }
    return a[1] < b[1]
}

for i in 0..<N {
    print("\(axis[i][0]) \(axis[i][1])")
}
