//
//  Image+Extension.swift
//  Bilingual
//
//  Created by alireza on 10/8/23.
//

import struct SwiftUI.Image

public extension Image {
    init(name: ImageName) {
        self.init(name.rawValue)
    }
}

public struct ImageName: ExpressibleByStringLiteral, Hashable {
    public typealias StringLiteralType = String
    public var rawValue: String
    
    public init(stringLiteral value: String) {
        rawValue = value
    }
}
