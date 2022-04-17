//  Created by Hyun on 2022/01/29.
let input = Int(readLine()!)!
var inputArr: [[Int]] = []
for _ in 1...input{
    let inputNums = readLine()!.split(separator: " ").map{ Int($0)! }
    inputArr.append(inputNums)
}

for i in inputArr{
    let a = i[0]
    let b = i[1]
    
    var x = a
    if b == 1{
        if x % 10 == 0 {
            print(10)
        } else {
            print(x % 10)
        }
    }else{
        for _ in 1..<b {
            x *= a
            x %= 10
        }
        
        if x == 0 {
            print(10)
        } else {
            print(x)
        }
    }
    
}

/*
 let a = dataNums[0]
 let b = dataNums[1]
 var num = a
 for _ in 1..<b{
     num *= a
     num = num % 10
 }
 print("\(num)")
 */
/*
 5
 1 6
 3 7
 6 2
 7 100
 9 635
 
 1
 7
 6
 1
 9
 */
