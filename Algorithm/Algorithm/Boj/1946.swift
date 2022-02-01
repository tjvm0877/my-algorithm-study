//  Created by Hyun on 2022/02/01.
let input = Int(readLine()!)!

func penta(_ n: Int) -> Int {
    if n == 1 {
        return 5
    }
    return penta(n-1) + 2 + (3 * (n-1) + 2)
}


print(penta(input) % 45678)
