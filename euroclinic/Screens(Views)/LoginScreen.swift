//
//  LogInScreen.swift
//  euroclinic
//
//  Created by Mila ✨ on 05.06.2023.
//

import SwiftUI

struct LogInScreen: View {
    @State var textfieldText = ""
    var body: some View {
        TextField("Введите имя:", text: $textfieldText)
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
    }
}

struct LogInScreen_Previews: PreviewProvider {
    static var previews: some View {
        LogInScreen()
    }
}
