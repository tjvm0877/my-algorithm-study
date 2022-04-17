//  Created by Hyun on 2022/03/28.
var binary = readLine()!.map{ String($0) }
var octalArr: [String] = []

var count = 0
var binary2octal = ""
for i in (0..<binary.count).reversed() {
    binary2octal = binary[i] + binary2octal
    count += 1
    
    if count == 3 {
        octalArr.insert(binaryToOctal(binary2octal), at: octalArr.startIndex)
        count = 0
        binary2octal = ""
    } else if i == 0 {
        binary2octal = "0" + binary2octal
        octalArr.insert(binaryToOctal(binary2octal), at: octalArr.startIndex)
    }
}

print(octalArr.joined(separator: ""))


func binaryToOctal(_ n: String) -> String{
    if n == "001" {
        return "1"
    } else if n == "010" {
        return "2"
    } else if n == "011" {
        return "3"
    } else if n == "100" {
        return "4"
    } else if n == "101" {
        return "5"
    } else if n == "110" {
        return "6"
    } else if n == "111" {
        return "7"
    } else {
        return "0"
    }
}
