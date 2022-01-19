//  Created by Hyun on 2022/01/18.
import Foundation

var colors: [String] = []
var sum = 0
var mul = 0

let colorName: [String] = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]


//print(pow(10, 3))
for i in 1...3{
    let input = String(readLine()!)
    for j in 0...colorName.count-1 {
        if input == colorName[j] {
            if i == 1 {
                sum += 10 * j
            } else if i == 2 {
                sum += j
            } else if i == 3 {
                mul = Int(pow(10, Double(j)))
            }
        }
    }
}

print(sum * mul)
