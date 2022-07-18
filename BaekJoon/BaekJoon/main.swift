//
//  main.swift
//  BaekJoon
//
//  Created by Bibi on 2022/07/18.
//

import Foundation

var inputArr: [String] = []
let inputCount = Int(readLine()!)!
for _ in 1...inputCount {
    inputArr.append(readLine()!)
}
//let commandArr = inputArr.components(separatedBy: " ")
let stack = Stack()
for index in inputArr.indices {
    let result = stack.execute(command: inputArr[index])
    if result != nil {
        print(result!)
    }
}
