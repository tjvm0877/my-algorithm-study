//  Created by Hyun on 2022/03/20.
let N = Int(readLine()!)!

for _ in 1...N {
    let nums = readLine()!.split(separator: ",").map{ Int($0)! }
    print(nums[0] + nums[1])
}
