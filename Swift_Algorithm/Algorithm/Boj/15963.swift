//  Created by Hyun on 2022/04/01.
let input = readLine()!.split(separator: " ").map{Int($0)!}
if input[0] == input[1] {
    print(1)
} else {
    print(0)
}
