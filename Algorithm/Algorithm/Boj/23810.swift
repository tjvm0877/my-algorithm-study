//  Created by Hyun on 2022/03/23.
let N = Int(readLine()!)!

var long = ""
var short = ""

for i in 1...N {
    for _ in 1...N {
        long += "@@@@@"
        short += "@"
    }
    if i != N {
        long += "\n"
        short += "\n"
    }
}


print(long)
print(short)
print(long)
print(short)
print(short)
