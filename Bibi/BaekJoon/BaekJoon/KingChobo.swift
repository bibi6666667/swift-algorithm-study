//
//  File.swift
//  BaekJoon
//
//  Created by Bibi on 2022/07/26.
//

import Foundation

class KingChobo {
    
    func q1000() { // A + B
        let input = readLine()!
        let inputArr = input.components(separatedBy: " ")
        print(inputArr.reduce(0, { $0 + Int($1)! }))
    }
    
    func q1001() { // A - B
        let input = readLine()!
        let inputArr = input.components(separatedBy: " ")
        print(Int(inputArr[0])! - Int(inputArr[1])!)
    }
    
    func q1330() { // 두 수 비교하기
        let input = readLine()!
        let inputArr = input.components(separatedBy: " ")
        let a = Int(inputArr[0])!
        let b = Int(inputArr[1])!
        if a == b {
            print("==")
        }
        if a > b {
            print(">")
        }
        if a < b {
            print("<")
        }
    }
    
    func q1550() { // 16진수
        //16진수 -> 10진수
        let input16 = readLine()!
        print(Int(input16, radix: 16)!)
    }
    
    func q2558() { // A + B - 2
        let a = Int(readLine()!)!
        let b = Int(readLine()!)!
        print(a + b)
    }
    
    func q2741() { // N찍기
        let input = Int(readLine()!)!
        let arr = Array(1...input)
        arr.forEach {
            print($0)
        }
    }
    
    func q2742() { // 기찍N
        let input = Int(readLine()!)!
        let arr = Array(1...input)
        arr.forEach {
            print(input + 1 - $0)
        }
    }
    
    func q2752() { // 세수정렬
        let input = readLine()!
        let inputArr = input.components(separatedBy: " ")
        let sortedArr = inputArr.map { Int($0)! }
            .sorted() // 숫자인지 문자인지 확인할것!
        sortedArr.forEach {
            print($0)
        }
    }
    
    func q2753() { // 윤년
        let input = Int(readLine()!)!
        if input % 400 == 0 {
            print(1)
            return
        }
        if input % 4 == 0 && input % 100 != 0 {
            print(1)
            return
        }
        print(0)
        return
    }
    
    func q4101() { // 크냐?
        var inputList: [(x: Int, y: Int)] = []
        var flag = true
        while (flag) {
            let input = readLine()!
            let inputArr = input.components(separatedBy: " ")
            let x = Int(inputArr[0])!
            let y = Int(inputArr[1])!
            if (x == 0 && y == 0) {
                flag = false
                break // 0 0 이면 판단하지 않음
            }
            inputList.append((x, y))
        }
        inputList.forEach {
            if $0 > $1 {
                print("Yes")
            } else {
                print("No")
            }
        }
    }
    
    func q4562() { // No Brainer
        let count = Int(readLine()!)!
        var inputArr: [String] = []
        for _ in 1...count {
            inputArr.append(readLine()!)
        }
        inputArr.forEach { str in
            let intArr = str.components(separatedBy: " ").map { Int($0)! }
            if intArr[0] < intArr[1] {
                print("NO BRAINS")
            } else {
                print("MMM BRAINS")
            }
        }
    }
    
    func q4892() { // 숫자 맞추기 게임
        var flag = true
        var inputList: [Int] = .init()
        while (flag) {
            let input = Int(readLine()!)!
            if input == 0 {
                flag = false
                break
            }
            inputList.append(input)
        }
        for index in inputList.indices {
            let n0 = inputList[index]
            let n1 = n0 * 3
            var n2 = 0
            var n2Value = ""
            if (n1 % 2 == 0) {
                n2 = n1 / 2
                n2Value = "even"
            } else {
                n2 = (n1 + 1) / 2
                n2Value = "odd"
            }
            let n3 = n2 * 3
            let n4 = n3 / 9
            print("\(index + 1). \(n2Value) \(n4)")
        }
    }
    
    func q5217() { // 쌍의 합 - 수의 범위에 따라 예외처리를 잘 해주자.
        let count = Int(readLine()!)!
        var inputArr: [Int] = []
        for _ in 1...count {
            inputArr.append(Int(readLine()!)!)
        }
        for index in inputArr.indices {
            let number = inputArr[index]
            var pairList: [(Int, Int)] = []
            var message = "Pairs for \(number): "
            if number == 1 || number == 2 {
                print(message)
                continue
            }
            let 몫 = number / 2
            for n in 1...몫 {
                let substracted = number - n
                if n == substracted {
                    continue
                }
                if !pairList.isEmpty {
                    message.append(", ")
                }
                message.append("\(n) \(substracted)")
                pairList.append((n, substracted))
            }
            print(message)
        }
    }
    
    func q5337() { // 웰컴
        print(".  .   .")
        print("|  | _ | _. _ ._ _  _")
        print("|/\\|(/.|(_.(_)[ | )(/.")
    }
    
    /// 7/27
    func q5338() { // 마이크로소프트 로고
        print("       _.-;;-._")
        print("'-..-'|   ||   |")
        print("'-..-'|_.-;;-._|")
        print("'-..-'|   ||   |")
        print("'-..-'|_.-''-._|")
    }
    
    func q5339() { // 콜센터
        print("     /~\\")
        print("    ( oo|")
        print("    _\\=/_")
        print("   /  _  \\")
        print("  //|/.\\|\\\\")
        print(" ||  \\ /  ||")
        print("============")
        print("|          |")
        print("|          |")
        print("|          |")
    }
    
    func q5522() { // 카드 게임
        var inputArr: [Int] = []
        for _ in 1...5 {
            inputArr.append(Int(readLine()!)!)
        }
        print(inputArr.reduce(0, { $0 + $1 }))
    }
    
    func q6749() { // Next in line
        let young = Int(readLine()!)!
        let middle = Int(readLine()!)!
        print(middle + (middle - young))
    }
    
    func q6778() { // Which Alien?
        let antenna = Int(readLine()!)!
        let eye = Int(readLine()!)!
        if antenna >= 3 && eye <= 4 {
            print("TroyMartian")
        }
        if antenna <= 6 && eye >= 2 {
            print("VladSaturnian")
        }
        if antenna <= 2 && eye <= 3 {
            print("GraemeMercurian")
        }
    }
    
    func q6810() { // ISBN
        let first = Int(readLine()!)!
        let second = Int(readLine()!)!
        let third = Int(readLine()!)!
        let sum = 9 * 1 + 7 * 3 + 8 * 1 + 0 * 3 + 9 * 1 + 2 * 3 + 1 * 1 + 4 * 3 + 1 * 1 + 8 * 3 + first * 1 + second * 3 + third * 1
        print("The 1-3-sum is \(sum)")
    }
    
    func q7287() { // 등록
        print(33)
        print("bibi")
    }
    
    func q7891() { // Can you add this?
        let count = Int(readLine()!)!
        for _ in 1...count {
            let input = readLine()!
            let inputArr = input.components(separatedBy: " ")
            print(Int(inputArr[0])! + Int(inputArr[1])!)
        }
    }
    
    func q8370() { // Plane
        let input = readLine()!
        let inputArr = input.components(separatedBy: " ").map{ Int($0)! }
        let sum = inputArr[0] * inputArr[1] + inputArr[2] * inputArr[3]
        print(sum)
    }
    
    func q8393() { // 합
        let input = Int(readLine()!)!
        var sum = 0
        for num in 1...input {
            sum += num
        }
        print(sum)
    }
    
    func q9316() { // Hello Judge
        let count = Int(readLine()!)!
        for num in 1...count {
            print("Hello World, Judge \(num)!")
        }
    }
    
    func q9653() { // 스타워즈 로고
        print("    8888888888  888    88888")
        print("   88     88   88 88   88  88")
        print("    8888  88  88   88  88888")
        print("       88 88 888888888 88   88")
        print("88888888  88 88     88 88    888888")
        print("")
        print("88  88  88   888    88888    888888")
        print("88  88  88  88 88   88  88  88")
        print("88 8888 88 88   88  88888    8888")
        print(" 888  888 888888888 88  88      88")
        print("  88  88  88     88 88   88888888")
    }
    
    func q9654() { // 나부 함대 데이터
        print("SHIP NAME      CLASS          DEPLOYMENT IN SERVICE")
        print("N2 Bomber      Heavy Fighter  Limited    21        ")
        print("J-Type 327     Light Combat   Unlimited  1         ")
        print("NX Cruiser     Medium Fighter Limited    18        ")
        print("N1 Starfighter Medium Fighter Unlimited  25        ")
        print("Royal Cruiser  Light Combat   Limited    4         ")
    }
    
    func q9713() { // Sum of Odd Sequence
        // 주어진 모든 홀수를 더하는 게 아니라, 1 ~ 주어진 홀수 사이의 홀수를 모두 더하는 문제
        let count = Int(readLine()!)!
        for _ in 1...count {
            let int = Int(readLine()!)!
            var sum = 0
            for i in 1...int {
                if i % 2 != 0 {
                    sum += i
                }
            }
            print(sum)
        }
    }
    
    func q10093() { // 숫자
        // 예외처리가 중요. 값이 없으면 빈 문자열 출력해야.
        let input = readLine()!
        let inputArr = input.components(separatedBy: " ").map { Int($0)! }.sorted()
        let a = inputArr[0]
        let b = inputArr[1]
        var gap = b - a - 1
        if a == b || a + 1 == b {
            gap = 0
            print(gap)
            print("")
        } else {
            print(gap)
            for i in a+1..<b {
                print(i, terminator: " ")
            }
        }
    }
    
    func q10172() { // 개
        print("|\\_/|")
        print("|q p|   /}")
        print("( 0 )\"\"\"\\")
        print("|\"^\"`    |")
        print("||_/=\\\\__|")
    }
    
    func q10699() { // 오늘 날짜
        // locale, timezone 줬는데도 안되길래 그냥 오늘날짜 출력..
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.timeZone = TimeZone(abbreviation: "KST")
        formatter.dateFormat = "yyyy-MM-dd"
        print(formatter.string(from: Date()))
    }
}
