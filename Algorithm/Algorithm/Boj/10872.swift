//  Created by Hyun on 2022/01/23.
let input = Int(readLine()!)!

func factorial (_ n: Int) -> Int{
    if n <= 1 {
        return 1
    }
    return (n * factorial(n - 1))
}

let answer = factorial(input)
print(answer)
