//
//  Stack.swift
//  BaekJoon
//
//  Created by Bibi on 2022/07/18.
//

import Foundation

class Stack {
    
    private var stack: [Int] = []
    
    enum Command: String {
        case push, pop, size, empty, top
    }
    
    func execute(command: String) -> Int? {
        let commandString = command.components(separatedBy: " ")[0]
        switch commandString {
        case Command.push.rawValue:
            let x = command.components(separatedBy: " ")[1]
            push(x: Int(x)!)
            return nil
        case Command.pop.rawValue:
            return pop()
        case Command.size.rawValue:
            return size()
        case Command.empty.rawValue:
            return empty()
        case Command.top.rawValue:
            return top()
        default:
            return nil
        }
    }
    
    private func push(x: Int) {
        stack.append(x)
    }
    
    private func pop() -> Int {
        if stack.last != nil {
            return stack.removeLast()
        }
        return -1
    }
    
    private func size() -> Int {
        return stack.count
    }
    
    private func empty() -> Int {
        stack.isEmpty ? 1 : 0
    }
    
    private func top() -> Int {
        if let last = stack.last {
            return last
        }
        return -1
    }
}
