//  Created by Hyun on 2022/02/06.
let input = readLine()!.split(separator: " ").map { Int($0)! }
var divArr: [Int] = []

for i in 1...input[0] {
    if input[0] % i == 0 {
        divArr.append(i)
    }
}

if input[1] > divArr.count{
    print("0")
} else {
    print(divArr[input[1] - 1])
}
