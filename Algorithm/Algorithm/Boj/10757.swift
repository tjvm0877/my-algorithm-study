//  Created by Hyun on 2022/03/27.
let N = readLine()!.split(separator: " ")

func str2int(_ string: String) -> [Int] {
    return string.map { Int(String($0))! }
}

func insertZero(_ arr: [Int]) -> [Int] {
    var n = arr
    let zero = abs(diff)
    for _ in 0..<zero {
        n.insert(0, at: n.startIndex)
    }
    return n
}

var A = str2int(String(N[0]))
var B = str2int(String(N[1]))
let diff = A.count - B.count

if diff < 0{
    A = insertZero(A)
} else {
    B = insertZero(B)
}

for i in (0 ..< A.count).reversed() {
    A[i] += B[i]
    if i > 0 && A[i] >= 10 {
        A[i-1] += 1
        A[i] = A[i] % 10
    }
}

let result = (A.map { String($0) }).joined(separator: "")
print(result)

