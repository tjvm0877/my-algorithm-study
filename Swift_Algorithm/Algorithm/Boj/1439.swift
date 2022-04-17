//  Created by Hyun on 2022/02/21.
let input = readLine()!

let a = input.split(separator: "0")
let b = input.split(separator: "1")

if a.count < b.count {
    print(a.count)
}else {
    print(b.count)
}
