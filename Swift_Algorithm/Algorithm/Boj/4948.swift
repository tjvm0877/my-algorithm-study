//  Created by Hyun on 2022/04/08.
import Foundation
var N: [Int] = []
var input = true

while input == true {
    let a = Int(readLine()!)!
    if a == 0 {
        input = false
    } else {
        N.append(a)
    }
}

for i in N {
    print(primeNum(i))
}

func primeNum(_ n:Int) -> Int {
    var prime = 0
    for i in (n+1)...(2*n) {
        if isPrime(num: i) == true {
            prime += 1
        }
    }
    return prime
}

func isPrime(num: Int) -> Bool {
    if(num<4) {
        return num == 1 ? false : true
    }
    for i in 2...Int(sqrt(Double(num))) {
        if(num % i == 0) { return false }
    }
    return true
}
