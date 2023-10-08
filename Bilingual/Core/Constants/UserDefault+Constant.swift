//
//  UserDefault+Constant.swift
//  Bilingual
//
//  Created by Alireza Sotoudeh on 10/3/23.
//

import Foundation

extension UserDefaults {
    public var language: Language {
        get {
            guard let language = value(for: .appLanguage) as? String else {
                self.language = .english
                return .english
            }
            return Language(rawValue: language) ?? .english
        }
        set {
            set(newValue.rawValue, for: .appLanguage)
        }
    }
}
