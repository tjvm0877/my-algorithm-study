//  Created by Hyun on 2022/01/26.
let city = Int(readLine()!)!
let road = readLine()!.split(separator: " ").map{ Int($0)! }
let oilPrice = readLine()!.split(separator: " ").map{ Int($0)! }

// 현재 도시
var current = 0

// 기름값의 총합 저장하는 변수
var price = 0

while current != city - 1 {
    price += move(current)
}

// 결과 출력
print(price)

// 이동 n = 현재 위치, return = 총 기름값
func move(_ n: Int) -> Int {
    // 다음 싼 도시 찾기
    let next = priceCheck(n)
    // 만약 현재도시가 가장 싸다?
    if next == n {
        var roads = 0
        for i in n..<road.count{
            roads += road[i]
        }
        current = city - 1
        return oilPrice[n] * roads
    } else { // 다음 가장 싼 도시가 있다?
        // 지금이 시작점이라면?
        if n == 0 {
            current += 1
            return oilPrice[0] * road[0]
        } else { // 시작점이 아니라면?
            let go = next - n
            var roads = 0
            
            for i in n...go{
               roads += i
            }
            current += go
            return oilPrice[n] * roads
        }
    }
}


// 기름값 비교 함수 n = 현재 도시 위치, return = 현재 도시의 기름값과 같거나 더 싼 도시
func priceCheck(_ n: Int) -> Int{
    var cheap: [Int] = []
    for i in n..<oilPrice.count - 1{
        if oilPrice[n] > oilPrice[i]{
            cheap.append(i)
        }
    }
    if cheap.count == 0{
        return n
    } else{
        return cheap[0]
    }
}
