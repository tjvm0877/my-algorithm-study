//  Created by Hyun on 2022/03/28.

var input = Array(readLine()!).map{ Int(String($0))! }
var octet = ""

for i in stride(from: input.count % 3, to: input.count, by: 3) {
    octet += String(input[i] * 4 + input[i + 1] * 2 + input[i + 2])
}

if input.count % 3 == 1 {
    octet = String(input[0]) + octet
} else if input.count % 3 == 2 {
    octet = String(input[0] * 2 + input[1]) + octet
}

print(octet)
