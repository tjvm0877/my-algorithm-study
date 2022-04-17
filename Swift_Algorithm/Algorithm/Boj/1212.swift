//  Created by Hyun on 2022/03/21.
let N = readLine()!.map{Int(String($0))!}

for i in 0..<N.count {
    var num = N[i]
    var answer = ""

    if num == 0 {
        answer += "0"
    }
    else {
        while num != 1 {
            answer += String(num % 2)
            num /= 2
        }
        answer += "1" // 2진수로 변경 시, 역순 시 가장 첫부분은 1이 돼야 해서 1 붙여줌.
    }

    if i > 0 && answer.count == 1 { // 첫번째가 아니고, 한자리라면 2자리 더 채워줌.
        answer += "00"
    }
    else if i > 0 && answer.count == 2 { // 첫번째가 아니고, 두자리라면 1자리 더 채워줌.
        answer += "0"
    }

    print(String(answer.reversed()), terminator: "")

}
