//  Created by Hyun on 2022/03/31.
import Foundation

// 라이노님의 FileIO
final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        
        return str
    }
}


let file = FileIO()


let testCase = file.readInt()


for _ in 0..<testCase {
    let N = file.readInt()
    
    var rank1 = Array(repeating: (0,0), count: N)
    var rank2 = Array(repeating: 0, count: N)
    for i in 0..<N {
        let r1 = file.readInt()
        let r2 = file.readInt()
        rank1[i] = (i,r1)
        rank2[i] = r2
    }
    
    rank1.sort(by: {$0.1 < $1.1})
    
    
    var last = 0
    var count = 1
    
    for i in (1..<N) {
        if rank2[rank1[i].0] < rank2[rank1[last].0] {
            count += 1
            last = i
        }
    }
    print(count)
}
