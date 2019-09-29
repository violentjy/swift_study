//: [Previous](@previous)

import Foundation

infix operator **

func **(lhs: Int, rhs: Int) -> Int {
    return lhs * rhs
}

infix operator ++

func ++(lhs: Int, rhs: Int) -> Int {
    return lhs + rhs
}

// 왜 오류가 날까요?
print(5 ++ 7 ** 2)
