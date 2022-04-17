//  Created by Hyun on 2022/03/06.
let N = Int(readLine()!)!
var arr: [Int] = []

for _ in 1...N {
    let a = Int(readLine()!)!
    arr.append(a)
}
arr.sort(by: <)

for i in arr {
    print(i)
}
