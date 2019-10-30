//: [Previous](@previous)

import Foundation

//let privateModel = PrivateModel() // Error (접근 불가)

let publicModel = PublicModel()

// public 빼고 전부 에러
//publicModel.privateFunction()
//publicModel.fileprivateFunction()
//publicModel.internalFunction()
publicModel.publicFunction()

private class PrivateTestModel {
    init() {
        print("initialize PrivateTestModel")
    }
    
    private init(_ testFlag: Int) {
        print("initialize PrivateTestModel by using private initializer..\nflag is bonus - \(testFlag)")
    }
    
    class func newInstance(_ testFlag: Int) -> PrivateTestModel {
        return PrivateTestModel(testFlag)
    }
}

//let internalTest = PrivateTest() // Error (PrivateTest 가 private 인데 privateTest 변수는 internal 이라)
fileprivate let fileprivateTest = PrivateTestModel() // 가능
private let privateTest = PrivateTestModel() // 가능
//private let privateTest2 = PrivateTestModel(2) // Error! private initialize 접근 불가
private let privateTest3 = PrivateTestModel.newInstance(3) // 가능! 내부 class function 통해서 initialize

//func makePrivateTestModel() -> PrivateTestModel { // Error!
//    return PrivateTestModel()
//}

//fileprivate func makePrivateTestModel() -> PrivateTestModel { // 가능
//    return PrivateTestModel.newInstance(4)
//}

private func makePrivateTestModel() -> PrivateTestModel {
    return PrivateTestModel()
}

//let internalTuple = (PrivateTestModel(), PublicModel()) // Error!
fileprivate let fileprivateTuple = (PrivateTestModel(), PublicModel())
private let privateTuple = (PrivateTestModel(), PublicModel())



/* private vs fileprivate */
class TestA {
    private var value = 0
    
    fileprivate func changeValue(_ value: Int) {
        print("value change! \(self.value) -> \(value)")
        self.value = value
    }
}

extension TestA {
    private func valueUp() {
        value += 1 // private 요소 접근 가능 (같은 구현체 extension 이라)
    }
}

let testA = TestA()

//testA.value // Error! - private 요소 접근 불가
//testA.valueUp() // Error! - private 요소 접근 불가
testA.changeValue(5) // 가능 - fileprivate 요소 접근 가능 (같은 파일)

//: [Next](@next)
