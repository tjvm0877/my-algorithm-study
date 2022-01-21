//  Created by Hyun on 2022/01/21.
let inputNum = Int(readLine()!)!
var title = 0
var count = 0

while count != inputNum {
    title += 1
    var numCheck = title
    var endCheck = false
    
    while numCheck != 0, endCheck == false {
        if numCheck % 1000 == 666 {
            count += 1
            endCheck = true
        } else {
            numCheck = numCheck / 10
        }
    }
}

print(title)
