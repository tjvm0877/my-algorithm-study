//  Created by Hyun on 2022/04/12.
let N = Int(readLine()!)!
var member: [[String]] = []
for i in 0..<N {
    var input = readLine()!.split(separator: " ").map{String($0)}
    input.append(String(i))
    member.append(input)
}

member.sort{ (a, b) -> Bool in
    if a[0] == b[0] {
        if a[1].startIndex == b[1].startIndex {
            return Int(a[2])! < Int(b[2])!
        }
        return a[1].startIndex < b[1].startIndex
    }
    return Int(a[0])! < Int(b[0])!
}

for i in member {
    print("\(i[0]) \(i[1])")
}
