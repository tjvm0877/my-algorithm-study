//  Created by Hyun on 2022/04/09.
var x: [Int] = []
var y: [Int] = []

for _ in 0..<3 {
    let point = readLine()!.split(separator: " ").map{ Int($0)! }
    x.append(point[0])
    y.append(point[1])
}

x.sort(by: <)
y.sort(by: <)

print("\(missingPoint(x)) \(missingPoint(y))")

func missingPoint(_ n: [Int]) -> Int {
    if n[0] == n[1] {
        return n[2]
    } else {
        return n[0]
    }
}
