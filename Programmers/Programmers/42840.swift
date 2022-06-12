//
//  42840.swift
//  Programmers
//
//  Created by Bibi on 2022/05/17.
//

import Foundation

func solution(_ answers: [Int]) -> [Int] {
    var result: [Int] = []
    let supo1Answer = [1, 2, 3, 4, 5]
    let supo2Answer = [2, 1, 2, 3, 2, 4, 2, 5]
    let supo3Answer = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var supo1Score = 0
    var supo2Score = 0
    var supo3Score = 0
    
    for i in answers.indices { // forEach로 개선 가능!
        if answers[i] == supo1Answer[i % supo1Answer.count] {
            supo1Score += 1
        }
        if answers[i] == supo2Answer[i % supo2Answer.count] {
            supo2Score += 1
        }
        if answers[i] == supo3Answer[i % supo3Answer.count] {
            supo3Score += 1
        }
    }
  
    let maxScore = [supo1Score, supo2Score, supo3Score].max()!
    if supo1Score == maxScore {
        result.append(1)
    }
    if supo2Score == maxScore {
        result.append(2)
    }
    if supo3Score == maxScore {
        result.append(3)
    }
    
    return result.sorted()
}
