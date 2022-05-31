//
//  42862.swift
//  Programmers
//
//  Created by Bibi on 2022/05/22.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int { // n : 학생 수, lost : 도난 번호, reserve : 여분 번호
    var answer = 0
    var reserveStudents = reserve.sorted()
    var lostStudents = lost.sorted()
    
    answer += (n - reserveStudents.count - lostStudents.count) // 여분x 도난x 학생
    answer += reserveStudents.count // 여분이 있는 학생은 무조건 수강 가능
    
    for reserveStudent in reserveStudents {
        if lostStudents.contains(reserveStudent) { // 여벌 있지만 도난당함
            if let index = reserveStudents.firstIndex(of: reserveStudent) {
                print("\(reserveStudent) : 여벌이 있지만 도난당함")
                reserveStudents.remove(at: index)
            }
        }
        if lostStudents.contains(reserveStudent - 1) {
            if let index = lostStudents.firstIndex(of: reserveStudent - 1) {
                print("\(reserveStudent)학생이 앞의 학생에게 체육복 빌려줌")
                lostStudents.remove(at: index)
            }
            answer += 1
        } else if lostStudents.contains(reserveStudent + 1) {
            if let index = lostStudents.firstIndex(of: reserveStudent + 1) {
                print("\(reserveStudent)학생이 뒤의 학생에게 체육복 빌려줌")
                lostStudents.remove(at: index)
            }
            answer += 1
        }
    }
    
    return answer
}

// 좋아 보였던 풀이 - https://babbab2.tistory.com/108
//
//func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
//    var lostSet = Set(lost).subtracting(reserve)
//    let reserveSet = Set(reserve).subtracting(lost)
//
//    for reserve in reserveSet {
//        if lostSet.contains(reserve - 1) {      // 내 앞 번호 학생이 체육복이 없는지 확인
//            lostSet.remove(reserve - 1)
//            continue
//        }
//        if lostSet.contains(reserve + 1) {      // 내 뒷 번호 학생이 체육복이 없는지 확인
//            lostSet.remove(reserve + 1)
//        }
//    }
//    return (n - lostSet.count)
//}

