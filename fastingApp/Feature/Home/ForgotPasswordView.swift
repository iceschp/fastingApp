//
//  ForgotPasswordView.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 24/3/2565 BE.
//


import SwiftUI

struct ForgotPasswordView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @StateObject private var viewModel = ForgotPasswordViewModelImpl(
        service: ForgotPasswordServiceImpl()
    )
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            
            Text("Reset Password")
                .font(.title)
            
            InputTextFieldView(text: $viewModel.email,
                               placeholder: "Email",
                               keyboardType: .emailAddress,
                               sfSymbol: "envelope")
            
            ButtonView(title: "Send Password Reset") {
                viewModel.sendPasswordResetRequest()
                presentationMode.wrappedValue.dismiss()
            }
        }
        .padding(.horizontal, 15)
        .applyClose()
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
