//
//  GradientText.swift
//  Presentacion (iOS)
//
//  Created by Luciano Nicolini on 28/04/2022.
//

import SwiftUI

struct GardientText: View {
    var text: String = "Text here"
  
    var body: some View {
        Text(text)
            .font(Font.footnote).bold()
            .gradientForeground(colors: [Color("pink-gradient-1"), Color("pink-gradient-2")])
    }
}

extension View {
    public func gradientForeground(colors: [Color]) -> some View {
        self
            .overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
}
