//  Created by Hyun on 2022/01/25.
var input = true
var count = 0

while input == true{
    let inputLine = readLine()!
    if inputLine == "문제" {
        count += 1
    } else if inputLine == "고무오리"{
        if count == 0 {
            count += 2
        } else {
            count -= 1
        }
    } else if inputLine == "고무오리 디버깅 끝"{
        input = false
    }
}

if count == 0 {
    print("고무오리야 사랑해")
} else {
    print("힝구")
}
