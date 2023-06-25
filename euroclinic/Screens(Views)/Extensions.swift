//
//  ViewModifiersExtensions.swift
//  euroclinic
//
//  Created by Mila ✨ on 17.06.2023.
//

import SwiftUI

struct customViewModifier: ViewModifier {
    var roundedCornes: CGFloat
    var color: Color
    var textColor: Color
    let darkGreen: Color = Color("GreenMed")

    func body(content: Content) -> some View {
        content
            .background(color)
            .cornerRadius(roundedCornes)
            .foregroundColor(textColor)
            .overlay(RoundedRectangle(cornerRadius: roundedCornes)
                .stroke(darkGreen, lineWidth: 2.5))
            .font(.custom("Open Sans", size: 18))
    }
}

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(width: 240 ,height: 2).padding(.top, 25))
            .foregroundColor(.gray)
            .padding(10)
    }
}
