//  Created by Hyun on 2022/02/04.
let input = Int(readLine()!)!
var line = input
let star = "*"
let blank = " "

while line != 0 {
    let count = (line * 2) - 1
    let b = input - line
    var stars = ""
    
    if b != 0 {
        for _ in 0..<b {
            stars += blank
        }
    }
    for _ in 1...count {
        stars += star
    }
    
    line -= 1
    print(stars)
}

line += 2

while line <= input {
    let count = (line * 2) - 1
    let b = input - line
    var stars = ""
    
    if b != 0 {
        for _ in 0..<b {
            stars += blank
        }
    }
    for _ in 1...count {
        stars += star
    }
    
    line += 1
    print(stars)
}

