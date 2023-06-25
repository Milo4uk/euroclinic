//
//  LogInScreen.swift
//  euroclinic
//
//  Created by Mila ✨ on 05.06.2023.
//

import SwiftUI

struct InitialScreen: View {
    @State var loginText = ""
    @State var passwordText = ""
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                TextField("Логин", text: $loginText)
                    .padding()
                    .multilineTextAlignment(.center)
                TextField("Пароль", text: $passwordText)
                    .padding()
                    .multilineTextAlignment(.center)
                NavigationLink("Регистрация", destination: LogInScreen())
                    .padding()
                NavigationLink("Восстановить пароль", destination: PasswordRecoveryScreen())
                Spacer()
                Spacer()
            }
        }
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct InitialScreen_Previews: PreviewProvider {
    static var previews: some View {
        InitialScreen()
    }
}
