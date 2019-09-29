//: [Previous](@previous)

import Foundation

/* 여기에 코드를 작성해주세요 */

//infix operator 블라블라

/*=====================*/

func customSum(_ a: Int, _ b: Int) -> Int {
    return a ++ b
}

print("5 + 2 = \(customSum(5, 2))")

func customSum(_ a: String, _ b: String) -> Int {
    return a ++ b
}

let lhs = "안녕하세요"
let rhs = "저는 이지영입니다"

print("\"\(lhs)\" + \"\(rhs)\" = \(customSum(lhs, rhs))")
