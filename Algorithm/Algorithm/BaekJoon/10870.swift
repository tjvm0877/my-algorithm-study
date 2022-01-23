//  Created by Hyun on 2022/01/23.
let input = Int(readLine()!)!

func Fibonacci(_ n: Int) -> Int{
    if n == 1 {
        return 1
    } else if n == 0 {
        return 0
    }
    return Fibonacci(n - 1) + Fibonacci(n - 2)
}

print(Fibonacci(input))
