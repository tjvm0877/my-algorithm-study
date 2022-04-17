//  Created by Hyun on 2022/02/17.
var bugger : [Int] = []
var drink : [Int] = []
for i in 1...5 {
    let input = Int(readLine()!)!
    if i > 3 {
        drink.append(input)
    } else {
        bugger.append(input)
    }
}

bugger.sort(by: <)
drink.sort(by: <)

print(bugger[0] + drink[0] - 50)
