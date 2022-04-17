//  Created by Hyun on 2022/04/07.
var input = true
var length: [[Int]] = []
while input == true {
    var N = readLine()!.split(separator: " ").map{ Int($0)! }
    N.sort(by: <)
    let a = N[0] * N[0]
    let b = N[1] * N[1]
    let c = N[2] * N[2]
    if N[0] + N[1] + N[2] == 0 {
        input = false
    } else {
        if c == a + b {
            print("right")
        } else {
            print("wrong")
        }
    }
}
