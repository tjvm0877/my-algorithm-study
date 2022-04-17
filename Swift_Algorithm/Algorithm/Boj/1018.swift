//  Created by Hyun on 2022/04/16.
var board: [[String]] = Array(repeating: Array(repeating: "", count: 50), count: 50)
let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = line[0]
let M = line[1]

for i in 0..<N{
    board[i] = readLine()!.map{ String($0) }
}

var rs = 1000

for row in 0..<N-7 {
    for col in 0..<M-7 {
        var count = 0
        
        for x in 0..<8 {
            for y in 0..<8 {
                if x % 2 == 1 {
                    if y % 2 == 1, board[x+row][y+col] == "B" {
                        count += 1
                    } else if y % 2 == 0, board[x+row][y+col] == "W" {
                        count += 1
                    }
                } else {
                    if y % 2 == 1, board[x+row][y+col] == "W" {
                        count += 1
                    } else if y % 2 == 0, board[x+row][y+col] == "B" {
                        count += 1
                    }
                }
            }
        }
        count = min(count, 64-count)
        rs = min(rs, count)
    }
}
print(rs)
