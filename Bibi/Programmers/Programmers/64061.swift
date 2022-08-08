//
//  64061.swift
//  Programmers
//
//  Created by Bibi on 2022/06/12.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var result = 0
    var mutableBoard = board
    var basket: [Int] = []
    let movesIndex = moves.map { $0 - 1 }
    
    for move in movesIndex {
        for lineIndex in mutableBoard.indices {
            var line = mutableBoard[lineIndex]
            if mutableBoard[lineIndex][move] == 0 {
                continue
            }
            
            // 바구니에 더하지 않고 비교만 함
            if basket.isEmpty {
                basket.append(mutableBoard[lineIndex][move])
                mutableBoard[lineIndex][move] = 0
                break
            }
            if !basket.isEmpty {
                let basketLast = basket.last!
                if basketLast == mutableBoard[lineIndex][move] {
                    basket.popLast()
                    result += 2
                } else {
                    basket.append(mutableBoard[lineIndex][move])
                }
            }
            mutableBoard[lineIndex][move] = 0
            break
        }
    }
    return result
}
