//  Created by Hyun on 2022/02/13.
let input = Int(readLine()!)!

func fibo(_ n: Int) {
    var cache = [0, 1]
    
    if n > 1 {
        for i in 2...n {
            cache.append(cache[i-2] + cache[i - 1])
        }
    }
    
    print(cache[n])
}

fibo(input)
