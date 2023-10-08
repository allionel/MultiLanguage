//
//  LittleBox.swift
//  Bilingual
//
//  Created by alireza on 10/8/23.
//

import SwiftUI

struct LittleBox<Content: View>: View {
    @ViewBuilder var contet: Content
    
    private let lineWidth: CGFloat = 2
    private let internalPadding: CGFloat = 8
    private let externalPadding: CGFloat = 32
    
    var body: some View {
        contet
            .padding(internalPadding)
            .border(.cyan, width: lineWidth)
            .padding(externalPadding)
    }
}

struct LittleBox_Previews: PreviewProvider {
    static var previews: some View {
        LittleBox(contet: {})
    }
}
