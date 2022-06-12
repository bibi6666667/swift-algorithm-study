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
        print("\(move)번째 줄에서 인형을 뽑을게요")
        for lineIndex in mutableBoard.indices {
            var line = mutableBoard[lineIndex]
            if mutableBoard[lineIndex][move] == 0 {
                print("인형이 없네요.")
                continue
            }
            
            print("인형이 있어요! : \(mutableBoard[lineIndex][move])")
            
            // 바구니에 더하지 않고 비교만 함
            if basket.isEmpty {
                print("바구니에 인형을 넣을게요")
                basket.append(mutableBoard[lineIndex][move])
                mutableBoard[lineIndex][move] = 0
                break
            }
            if !basket.isEmpty {
                print("바구니 속 인형과 비교할게요")
                let basketLast = basket.last!
                if basketLast == mutableBoard[lineIndex][move] { // 같으면 없애고
                    print("바구니의 같은 인형이 사라져요 : \(mutableBoard[lineIndex][move])")
                    basket.popLast()
                    result += 2
                } else { // 다르면 넣기
                    print("바구니에 인형을 넣을게요")
                    basket.append(mutableBoard[lineIndex][move])
                }
            }
            mutableBoard[lineIndex][move] = 0
            break
        }
        print(board: mutableBoard)
        print("바구니 : \(basket)")
    }
    print("답은 \(result)에요.")
    return result
}

func print(board: [[Int]]) {
    print("-------")
    print("보드")
    board.forEach { print($0) }
    print("-------")
}
