import Foundation


/**
 프로그래머스:체육복
 */
class programmers_42862 {

    func solution(_ n: Int, _ lost: [Int], _ reserve: [Int]) -> Int {
        // key: 학생번호, value: 체육복 수
        var map = [Int: Int]()
        for i in 1...n {
            map[i] = 1
        }
        
        for i in 0..<lost.count {
            map[lost[i]]! -= 1
        }
        
        for i in 0..<reserve.count {
            map[reserve[i]]! += 1
        }
        
        var result = 0
        
        // 빌려줄 수 있는애를 찾아서 자신-1 or 자신+1 의 값이 0이면 체육복을 빌려준다
        for i in 1...n {
            guard let val = map[i] else { continue }
            if val <= 1 {
                continue
            }
            // 체육복을 빌려줄 수 있다
            if let prev = map[i-1], prev == 0 {
                map[i] = val - 1
                map[i-1] = 1
                continue
            }
            
            if let next = map[i+1], next == 0 {
                map[i] = val - 1
                map[i+1] = 1
                continue
            }
        }
        
        // value 가 0 이 아닌 갯수를 센다
        for element in map {
            if (element.value >= 1) {
                result += 1
            }
        }
        
        return result
    }
}
