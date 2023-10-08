//
//  NavigationBackButton.swift
//  Bilingual
//
//  Created by Alireza Sotoudeh on 10/8/23.
//

import SwiftUI

struct NavigationBackButton: View {
    @EnvironmentObject private var localization: LocalizationManager
    @Environment(\.dismiss) var dismiss
    
    private var navigationBackButtonImage: String {
        localization.language.isEnglish ? "arrow.left.circle" : "arrow.right.circle"
    }
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Label(.navigationBackTitle, systemImage: navigationBackButtonImage)
                .labelStyle(.titleAndIcon)
        }
    }
}

struct NavigationBackButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBackButton()
    }
}
