//
//  CustomOptional.swift
//  CustomOptional
//
//  Created by 이지영 on 13/10/2019.
//  Copyright © 2019 이지영. All rights reserved.
//

import Foundation

public enum CustomOptional<Wrapped: Equatable>: ExpressibleByNilLiteral, Equatable {
    case none
    case some(Wrapped)
    
    public init(_ value: Wrapped) {
        self = .some(value)
    }
    
    public init(nilLiteral: ()) {
        self = .none
    }
    
    public static func == (lhs: CustomOptional<Wrapped>, rhs: CustomOptional<Wrapped>) -> Bool {
        switch (lhs, rhs) {
        case (.none, .none):
            return true
        case let (.some(lValue), .some(rValue)):
            return lValue == rValue
        default:
            return false
        }
    }
}
