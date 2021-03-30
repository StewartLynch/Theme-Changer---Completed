//
//  Modifiers.swift
//  Theme Changer
//
//  Created by Stewart Lynch on 2021-03-21.
//

import SwiftUI

struct FilledRoundedCornerButtonStyle: ButtonStyle {
    var font: Font = .body
    var padding: CGFloat = 8
    var bgColor = Color(.white)
    var fgColor = Color(.orange)
    var cornerRadius: CGFloat = 8
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(font)
            .padding(padding)
            .background(bgColor)
            .foregroundColor(fgColor)
            .cornerRadius(cornerRadius)
            .shadow(radius: 10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
