//
//  9012.swift
//  BaekJoon
//
//  Created by Bibi on 2022/07/25.
//

import Foundation

// 9012 괄호

class Parenthesis {
    
    func execute() {
        var inputArr: [String] = []
        let inputCount = Int(readLine()!)!
        for _ in 1...inputCount {
            inputArr.append(readLine()!)
        }
        for index in inputArr.indices {
            print(check(inputLine: inputArr[index]))
        }
    }
    
    private func check(inputLine: String) -> String {
        var stack: [String] = [] // "("만 들어갈 수 있는 스택.
        for index in inputLine.indices {
            let char = String(inputLine[index])
            if char == "(" {
                stack.append(char)
                continue
            }
            if char == ")" {
                if stack.isEmpty {
                    return "NO"
                }
                stack.removeLast()
                continue
            }
        }
        if !stack.isEmpty {
            return "NO"
        }
        return "YES"
    }
}
