//
//  ForgotPasswordView.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 24/3/2565 BE.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing:16){
                
                InputTextFieldView(text:.constant(""),
                placeholder: "Email",
                keyboardType: .emailAddress,
                sfSymbol: "envelope")
                
                ButtonView(title: "Send Password Reset") {
                                   presentationMode.wrappedValue.dismiss()
               }
                
            }
            .padding(.horizontal,15)
            .navigationTitle("Reset Password")
            .applyClose()
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
