//  Created by Hyun on 2022/03/22.

var input = true

while input == true {
    let N = readLine()!.split(separator: " ").map{ Int($0)! }
    
    if N[0] == N[1], N[0] == 0 {
        input = false
    } else {
        if N[0] > N[1] {
            print("Yes")
        } else {
            print("No")
        }
    }
}
