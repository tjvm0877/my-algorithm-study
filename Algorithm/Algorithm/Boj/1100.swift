//  Created by Hyun on 2022/02/23.
var count = 0

for i in 1...8 {
    var firstColor = 0
    if i % 2 == 0 {
        firstColor = 1
    }
    
    let inputLine = readLine()!
    var status = firstColor
    for j in inputLine {
        if j == "F" {
            if status == 0 {
                count += 1
                status = 1
            } else {
                status = 0
            }
        } else {
            if status == 0 {
                status = 1
            } else {
                status = 0
            }
        }
    }
}

print(count)
