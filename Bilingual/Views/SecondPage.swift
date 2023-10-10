//
//  SecondPage.swift
//  Bilingual
//
//  Created by Alireza Sotoudeh on 10/3/23.
//

import SwiftUI

struct SecondPage: View {
    @EnvironmentObject private var localization: LocalizationManager 
    @State private var showDialog: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Text(.secondPageTitle)
                .font(.system(size: 22))
            
            Spacer()
            Button {
                showDialog = true
            } label: {
                Text(.changeLanguage)
            }
            
            Spacer()
        }
        .confirmationDialog(.confirmationDialigTitle, isPresented: $showDialog) {
            ForEach(Language.allCases, id: \.identifier) { language in
                Button(language.localizedTitle) {
                    localization.changeLanguage(to: language)
                    showDialog = false
                }
                .disabled(localization.language == language)
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                NavigationBackButton()
            }
        }
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
