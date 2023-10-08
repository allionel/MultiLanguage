//
//  UserDefault+Extension.swift
//  Bilingual
//
//  Created by Alireza Sotoudeh on 10/3/23.
//

import Foundation

public extension UserDefaults {
    func set(_ value: Any?, for key: Keys) {
        setValue(value, forKey: key.rawValue)
    }

    func value(for key: Keys) -> Any? {
        value(forKey: key.rawValue)
    }
}
