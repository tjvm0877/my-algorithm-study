//  Created by Hyun on 2022/01/31.
let input = Int(readLine()!)!
var totalCoin: [Int] = []

for _ in 1...input {
    let inputNum = Int(readLine()!)!
    totalCoin.append(inputNum)
}

for i in totalCoin {
//Quarter  Dime Nickel Penny
    var total = i
    var returnList: [Int] = []
    
    returnList.append(total / 25)
    total = total % 25
    
    returnList.append(total / 10)
    total = total % 10
    
    returnList.append(total / 5)
    total = total % 5
    
    returnList.append(total / 1)
    total = total % 1
    
    print("\(returnList[0]) \(returnList[1]) \(returnList[2]) \(returnList[3])")
}
