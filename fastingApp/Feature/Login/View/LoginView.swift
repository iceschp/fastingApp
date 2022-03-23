//
//  LoginView.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 22/3/2565 BE.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 16) {
                InputTextFieldView(text: .constant(""),
                                   placeholder: "Email",
                                   keyboardType: .emailAddress,
                                   sfSymbol: "envelope")
                
                InputPasswordView(password: .constant(""),
                                   placeholder: "Password",
                                   sfSymbol: "lock")
            }
            HStack {
                Spacer()
                Button(action: {
                    // TODO : Handle presentation to forgot password
                }, label: { Text("Forgot Password")
                })
                    .font(.system(size: 16, weight: .bold))
            }
        }
        .padding(.horizontal,15)
        .navigationTitle("Login")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
