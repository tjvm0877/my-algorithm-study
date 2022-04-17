//  Created by Hyun on 2022/01/21.
let input = Int(readLine()!)!
var testCase : [Int] = []
for _ in 1...input{
    let inputCase = Int(readLine()!)!
    testCase.append(inputCase)
}

var callList: [(Int, Int)] = [(Int, Int)](repeating: (0,0), count: 41)
callList[0] = (1,0)
callList[1] = (0,1)

for i in 2..<callList.count{
    callList[i] = (callList[i-1].0 + callList[i-2].0, callList[i-1].1 + callList[i-2].1)
}

for j in testCase {
    print("\(callList[j].0) \(callList[j].1)")
}
