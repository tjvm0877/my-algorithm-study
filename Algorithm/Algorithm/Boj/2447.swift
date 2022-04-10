//  Created by Hyun on 2022/04/10.
let N = Int(readLine()!)!
func printStars(num: Int, pattern:[String]) {
    if num == 1 {
        pattern.forEach{ print($0) }
        return
    }
    
    let row1: [String] = pattern.map{ $0 + $0 + $0 }
    let row2: [String] = pattern.map{ $0 + String(repeating: " ", count: $0.count) + $0}
    let newPattern: [String] = row1 + row2 + row1
    
    printStars(num: num/3, pattern: newPattern)
}

printStars(num: N, pattern: ["*"])
