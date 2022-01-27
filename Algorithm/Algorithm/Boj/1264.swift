//  Created by Hyun on 2022/01/21.
var inputing = true
var inputStrings: [String] = []

while inputing == true {
    let input = readLine()!
    if input == "#" {
        inputing = false
    } else {
        inputStrings.append(input)
    }
}

let comp: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

for i in inputStrings{
    var count = 0
    var arr: [Character] = []
    for j in i {
        arr.append(j)
    }
    
    for k in arr {
        for l in comp {
            if k == l {
                count += 1
            }
        }
    }
    print(count)
}
