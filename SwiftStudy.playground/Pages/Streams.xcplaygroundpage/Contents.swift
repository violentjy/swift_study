//: [Previous](@previous)

import Foundation

let numbers: [Int] = [5, 23, 100, 33, 50, 94]

let isEven = numbers.map ({ (number: Int) -> Bool in
    return number % 2 == 0
})
let isEven2 = numbers.map ({ $0 % 2 == 0 })

print(isEven)
print(isEven2)

let evenNumbers = numbers.filter({ $0 % 2 == 0 })

print(evenNumbers)


let sum = numbers.reduce(0, { $0 + $1 })

print(sum)

let sum2 = numbers.reduce(into: 0, { $0 + $1 })

// 결과는?! 두구두구
print(sum2)

let sum3 = numbers.reduce(into: 0, { $0 += $1})

print(sum3)

//: [Next](@next)
