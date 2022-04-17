//  Created by Hyun on 2022/03/31.
let N = Int(readLine()!)!

for _ in 0..<N {
    let words = readLine()!.split(separator: " ")
    var reverse: [String] = []
    
    for i in words {
        var a = i.map{ String($0) }
        a.reverse()
        let word = a.joined(separator: "")
        
        reverse.append(word)
    }
    print(reverse.joined(separator: " "))
}

