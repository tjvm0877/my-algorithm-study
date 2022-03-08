//  Created by Hyun on 2022/03/08.
let N = Int(readLine()!)!
var house = readLine()!.split(separator: " ").map{ Int($0)! }

house.sort(by: <)
print(house[(N-1) / 2])
