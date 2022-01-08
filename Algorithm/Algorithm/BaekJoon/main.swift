//
//  main.swift
//  Algorithm
//
//  Created by Hyun on 2022/01/03.
//

var inputNum = readLine()!.split(separator: " ").map{ Int($0)! }

var a = inputNum[0]
var b = inputNum[1]
var v = inputNum[2]

if a == v {
    print(1)
}
else if v / a == 1 {
    print(2)
}
else{
    if v % (a-b) == 0 {
        let days = v / (a-b)
        
        // 3 1 10
        // 3 2 - 5 4 - 7 6 - 9 8 - 11 10
    }
    else {
        
    }
    
}
// 5 3 - 8 5 - 10
