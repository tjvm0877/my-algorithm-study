//  Created by Hyun on 2022/01/28.
let input = readLine()!
var result = 0

var a = input.split(separator: "-")
for i in 0..<a.count {
    if a[i].contains("+") {
        var sum = 0
        let sumArr = a[i].split(separator: "+")
        for j in sumArr{
            sum += Int(j)!
        }
        a[i] = "\(sum)"
    }
}

result += Int(a[0])!
for i in 1..<a.count{
    result -= Int(a[i])!
}
        
print(result)
