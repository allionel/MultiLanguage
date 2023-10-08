//
//  ContentView.swift
//  Bilingual
//
//  Created by Alireza Sotoudeh on 10/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text(.firstPageTitle)
                    .font(.system(size: 22))
                
                Spacer()
                VStack(alignment: .leading, spacing: .zero) {
                    LittleBox {
                        HStack {
                            Text(.creditCardDescription)
                            Spacer()
                            Image(name: .creditCard)
                        }
                    }
                    
                    LittleBox {
                        Text(.leftAlignedTitle)
                    }
                    
                    LittleBox {
                        HStack {
                            Text(.moveForwardTitle)
                            Spacer()
                            HStack(spacing: 8) {
                                makeLogo()
                                makeLogo()
                                makeLogo()
                            }
                        }
                    }
                }
                Spacer()
                Spacer()

                NavigationLink(.nextButton, destination: SecondPage())
                Spacer()
            }
        }
    }
    
    private func makeLogo() -> some View {
        Image(name: .chevronIcon)
            .resizable()
            .frame(width: 24, height: 24)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

