//
//  LocalizationManager.swift
//  Bilingual
//
//  Created by Alireza Sotoudeh on 10/3/23.
//

import Foundation
import struct SwiftUI.AppStorage
import enum SwiftUI.LayoutDirection

/// The class that handle localization dependencies
///
public final class LocalizationManager: ObservableObject {
    public static let shared: LocalizationManager = .init()
    private init() {}
            
    public var locale: Locale {
        .init(identifier: language.identifier)
    }
    
    public var alignment: LayoutDirection {
        language.alignment
    }
    
    @AppStorage(Keys.appLanguage.rawValue)
    public var language: Language = UserDefaults.standard.language
    
    public func changeLanguage(to newLanguage: Language) {
        self.language = newLanguage
    }

}
