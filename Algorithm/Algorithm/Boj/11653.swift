//  Created by Hyun on 2022/04/05.
var N = Int(readLine()!)!

for i in stride(from: 2, to: N, by: 1) {
    while N % i == 0 {
        N /= i
        print(i)
    }
}

if N != 1 {
    print(N)
}
