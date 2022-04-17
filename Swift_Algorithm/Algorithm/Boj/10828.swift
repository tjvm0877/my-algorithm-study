//  Created by Hyun on 2022/03/09.
let N = Int(readLine()!)!

var stack: [Int] = []
var command: [String] = []
for _ in 1...N {
    let input = readLine()!
    command.append(input)
}

for i in command {
    let com = i.split(separator: " ")
    
    // push
    if com.count == 2 {
        let val = Int(com[1])!
        stack.append(val)
    }
    // pop
    if com[0] == "pop" {
        if stack.count == 0 {
            print(-1)
        } else {
            print(stack[stack.endIndex - 1])
            stack.removeLast()
        }
    } else if com[0] == "size" { // size
        print(stack.count)
    } else if com[0] == "empty" { // empty
        if stack.count == 0 {
            print(1)
        } else {
            print(0)
        }
    } else if com[0] == "top" { // top
        if stack.count == 0 {
            print(-1)
        } else {
            print(stack[stack.endIndex - 1])
        }
    }
}
