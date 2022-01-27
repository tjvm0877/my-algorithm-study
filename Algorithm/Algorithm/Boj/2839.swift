//  Created by Hyun on 2022/01/03.

let order = Int(readLine()!)!

func takeSugar(_ n: Int) -> Int {
    var order = n
    var count = 0
    
    if n % 5 == 0 {
        return order / 5
    }
    
    while order >= 0 {
        order -= 3
        count += 1
        
        if order % 5 == 0 {
            return count + (order / 5)
        }
    }
    return -1
}
let answer = takeSugar(order)
print(answer)
