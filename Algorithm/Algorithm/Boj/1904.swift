//  Created by Hyun on 2022/04/04.
let N = Int(readLine()!)!

var a = 1
var b = 2
if N == 1 {
    print(a)
} else if N == 2 {
    print(b)
} else {
    var result = 0
    for _ in 3...N {
        result = (a + b) % 15746
        a = b % 15746
        b = result
    }
    print(result)
}
