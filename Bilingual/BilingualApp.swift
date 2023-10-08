//
//  BilingualApp.swift
//  Bilingual
//
//  Created by Alireza Sotoudeh on 10/2/23.
//

import SwiftUI

@main
struct BilingualApp: App {
    @ObservedObject private var localization: LocalizationManager = .shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(localization)
                .environment(\.locale, localization.locale)
                .environment(\.layoutDirection, localization.alignment)
        }
    }
}
