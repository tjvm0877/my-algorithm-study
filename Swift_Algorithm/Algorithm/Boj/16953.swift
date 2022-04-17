//  Created by Hyun on 2022/02/02.
let input = readLine()!.split(separator: " ").map{ UInt($0)! }
let a = input[0]
var b = input[1]
var count = 1
var check = true

while b != a {
    if b % 10 == 1 {
        b /= 10
        count += 1
    } else if b > a, b % 2 == 0 {
        b /= 2
        count += 1
    }
    
    if a > b {
        check = false
        b = a
    } else if b % 2 != 0, b % 10 != 1, a != b{
        check = false
        b = a
    }
    
}

if check == true {
    print(count)
} else {
    print("-1")
}
