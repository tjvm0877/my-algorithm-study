//  Created by Hyun on 2022/03/25.
let N = Int(readLine()!)!

var words: [String] = []
for _ in 1...N {
    let word = readLine()!
    words.append(word)
}

var ans = removeDuplication(in: words)

ans.sort{ (a, b) -> Bool in
    if a.count == b.count {
        return a < b
    }
    return a.count < b.count
}

for i in ans {
    print(i)
}


func removeDuplication(in array: [String]) -> [String]{
    let set = Set(array)
    let duplicationRemovedArray = Array(set)
    return duplicationRemovedArray
}
