//  Created by Hyun on 2022/03/07.
let input = readLine()!.split(separator: " ").map{ Int($0)! }
let R1 = input[0]
let S = input[1]
let R2 = (2 * S) - R1

print(R2)
