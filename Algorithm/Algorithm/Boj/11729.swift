//  Created by Hyun on 2022/01/29.
let N = Int(readLine()!)!
var count = 0
var ans = ""


func find(x: Int, current: Int,  to: Int, empty: Int  ) {
    if x == 1 {
        count += 1
        ans += "\(current) \(to)\n"
        return
    }
    find(x: x-1, current: current, to: empty, empty: to)
    ans += "\(current) \(to)\n"
    count += 1
    find(x: x-1, current: empty, to: to, empty: current)
}

find(x: N, current: 1, to: 3, empty: 2)
ans.removeLast()
print(count)
print(ans)
