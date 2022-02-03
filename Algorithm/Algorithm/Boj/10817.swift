//  Created by Hyun on 2022/02/03.
let input = readLine()!.split(separator: " ").map{ Int($0)! }
var sortInput = input.sorted(by: >)

print(sortInput[1])
