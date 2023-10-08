//
//  Keys.swift
//  Bilingual
//
//  Created by Alireza Sotoudeh on 10/3/23.
//

import Foundation

public struct Keys: ExpressibleByStringLiteral, Hashable {
    public typealias StringLiteralType = String
    public var rawValue: String
    
    public init(stringLiteral: String) {
        rawValue = stringLiteral
    }
}
