//
//  70128.swift
//  Programmers
//
//  Created by Bibi on 2022/06/20.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
//    var result = 0
//    for index in a.indices {
//        result += a[index] * b[index]
//    }
//    return result
    
//     .zip , .reduce 써보고 싶음!
    
    let zipAB = zip(a, b)
    result = zipAB
        .reduce(0) { (result, element) -> Int in
                let zipA = element.0
                let zipB = element.1
                return result + (zipA * zipB)
            }
    return result
}
