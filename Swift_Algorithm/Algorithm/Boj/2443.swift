//  Created by Hyun on 2022/03/26.
let N = Int(readLine()!)!

var num = 1
var space = ""
for _ in 1...N {
    var line = ""
    line += space
    for _ in 1...(2*N)-num {
        line += "*"
    }
    space += " "
    num += 2
    print(line)
}
