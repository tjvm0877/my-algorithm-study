//  Created by Hyun on 2022/01/01.
import Foundation

var inputNum = Int(readLine()!)!
var count = 1
var room = 1

if inputNum == 1 {
    print(count)
}
else {
    repeat{
        room = room + (count * 6)
        count += 1
    }while inputNum > room
    print(count)
}



