//  Created by Hyun on 2022/01/17.

let input = Int(readLine()!)!
var meetings: [mittingModel] = []

for _ in 1...input {
    let meeting = readLine()!.split(separator: " ").map{ Int($0)! }
    let meetingInfo = mittingModel(start: meeting[0], end: meeting[1])
        meetings.append(meetingInfo)
}

var sortMeetings = meetings.sorted { (a, b) -> Bool in
    if a.end == b.end {
        return a.start < b.start
    }
    return a.end < b.end
    
}

var pointer = 0
var count = 1
var now = 1

while now < sortMeetings.count {
    let a = sortMeetings[pointer].end
    let c = sortMeetings[now].start

    if a <= c{
        pointer = now
        count += 1
    }
    now += 1
}

print(count)

struct mittingModel {
    var start: Int
    var end: Int
}
