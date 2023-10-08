//
//  String+Constant.swift
//  Bilingual
//
//  Created by Alireza Sotoudeh on 10/3/23.
//

import struct SwiftUI.LocalizedStringKey

/// String literal demostrating `keys` to find desired `localized String Values`
///
public extension LocalizedStringKey {
    static let firstPageTitle: LocalizedStringKey = "first.page.title"
    static let nextButton: LocalizedStringKey = "next.button"
    static let creditCardDescription: LocalizedStringKey = "credit.card.section.description"
    
    static let secondPageTitle: LocalizedStringKey = "second.page.title"
    static let changeLanguage: LocalizedStringKey = "change.language"
    
    static let confirmationDialigTitle: LocalizedStringKey  = "confirmation.dialig.title"
    
    static let navigationBackTitle: LocalizedStringKey = "navigation.back.title"
    static let leftAlignedTitle: LocalizedStringKey = "left.aligned.title"
    static let moveForwardTitle: LocalizedStringKey = "move.forward.title"
}


