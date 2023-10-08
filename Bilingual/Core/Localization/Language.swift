//
//  Language.swift
//  Bilingual
//
//  Created by Alireza Sotoudeh on 10/3/23.
//

import Foundation
import enum SwiftUI.TextAlignment
import enum SwiftUI.LayoutDirection
import struct SwiftUI.LocalizedStringKey

/// An enum that stores languages attribute
///
public enum Language: String, Codable, CaseIterable {
    case english
    case persian
}

extension Language {
    public var identifier: String {
        switch self {
        case .english:
            return "en"
        case .persian:
            return "fa-IR"
        }
    }
    
    public var alignment: LayoutDirection {
        switch self {
        case .english:
            return .leftToRight
        case .persian:
            return .rightToLeft
        }
    }
    
    public var localizedTitle: LocalizedStringKey {
        switch self {
        case .english:
            return .init(stringLiteral: "select.english.title")
        case .persian:
            return .init(stringLiteral: "select.persian.title")
        }
    }
}

extension Language {
    public var isEnglish: Bool {
        self == .english
    }
}
