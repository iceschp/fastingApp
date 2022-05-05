//
//  LoginView.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 22/3/2565 BE.
//

import SwiftUI

struct LoginView: View {
    @State private var showRegistration = false
    @State private var showForgotPassword = false
    @StateObject private var vm = LoginViewModelImpl(
        service: LoginServiceImpl()
    )
    var screenWidth = UIScreen.main.bounds.width
   
    var body: some View {
        
        VStack(spacing: 10) {
            HStack (spacing: 0){
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("Color1"))
                    .frame(width: 200, height: 150)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("Color4"))
                    .frame(width: 400, height: 150)
            }
            
            Image("login")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .padding(.horizontal,-190)
                .padding(.vertical,-200)
                .padding(30)
            
            
            VStack(spacing: 16) {
                InputTextFieldView(text: $vm.credentials.email,
                                   placeholder: "Email",
                                   keyboardType: .emailAddress,
                                   sfSymbol: "envelope")
                
                InputPasswordView(password: $vm.credentials.password,
                                  placeholder: "Password",
                                  sfSymbol: "lock")
            }
            VStack(spacing:20){
                ButtonView(title: "Login"){
                    vm.login()
                }
                ButtonView(title: "Register",
                           background: .clear,
                           foreground: .green,
                           border: .green){
                    showRegistration.toggle()
                }
                           .sheet(isPresented: $showRegistration, content: {
                               RegisterView()
                           })
            }
            HStack {
                Spacer()
                Button(action: {
                    showForgotPassword.toggle()
                }, label: { Text("Forgot Password")
                })
                .font(.system(size: 15, weight: .bold))
            }
        }
        .sheet(isPresented: $showForgotPassword, content: {
            ForgotPasswordView()
        })
        .padding(.horizontal,20)
        .navigationTitle("Login")
        .alert(isPresented: $vm.hasError,
               content: {
            if case .failed(let error) = vm.state {
                return Alert (
                    title: Text("Error"), message: Text(error.localizedDescription))
            } else {
                return Alert (
                    title: Text("Error"), message: Text("Something went wrong"))
            }
        })
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
