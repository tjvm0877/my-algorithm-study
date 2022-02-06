//  Created by Hyun on 2022/02/06.
let input = Int(readLine()!)!
let star = "*"

for i in 0..<input {
    var stars = ""
    let count = input - i
    for _ in 1...count {
        stars += star
    }
    print(stars)
}
