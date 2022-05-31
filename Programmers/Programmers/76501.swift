//
//  76501.swift
//  Programmers
//
//  Created by Bibi on 2022/05/31.
//

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var answer = 0
    let range = absolutes.indices
    range.forEach { index in
        answer += signs[index] ? absolutes[index] : (absolutes[index] * -1)
    }
//    for index in absolutes.indices {
//        if signs[index] {
//            answer += absolutes[index]
//            continue
//        }
//        answer += (absolutes[index] * -1)
//    }
    return answer
}
