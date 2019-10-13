//
//  CustomOptionalOperator.swift
//  CustomOptional
//
//  Created by 이지영 on 13/10/2019.
//  Copyright © 2019 이지영. All rights reserved.
//

import Foundation

// optional 값 반환 -> 전위 연산자 ~
// 기본 값 추출 -> 중위 연산자 <>
// 강제 추출 -> 후위 연산자 >>

prefix operator ~

prefix func ~<Wrapped>(optional: CustomOptional<Wrapped>) -> Wrapped? {
    switch (optional) {
    case .none:
        return nil
    case let .some(value):
        return value
    }
}

postfix operator >>

postfix func >><Wrapped>(optional: CustomOptional<Wrapped>) throws -> Wrapped {
    switch (optional) {
    case .none:
        throw CustomOptionalError.accessNil
    case let .some(wrappedValue):
        return wrappedValue
    }
}

infix operator <>: NilCoalescingPrecedence

func <><Wrapped>(optional: CustomOptional<Wrapped>, defaultValue: Wrapped) -> Wrapped {
    switch(optional) {
    case .none:
        return defaultValue
    case let .some(value):
        return value
    }
}
