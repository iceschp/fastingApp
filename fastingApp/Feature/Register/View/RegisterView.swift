//
//  RegisterView.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 23/3/2565 BE.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            VStack(spacing: 32){
                VStack(spacing: 16){
            InputTextFieldView(text: .constant(""),
                               placeholder: "Email",
                               keyboardType: .emailAddress,
                               sfSymbol: "envelope")
            InputPasswordView(password: .constant(""),
                              placeholder: "Password",
                              sfSymbol: "lock")
        
      Divider()
                    InputTextFieldView(text: .constant(""),
                                       placeholder: "First Name",
                                       keyboardType: .namePhonePad,
                                       sfSymbol: nil)
                    
                    InputTextFieldView(text: .constant(""),
                                       placeholder: "Last Name",
                                       keyboardType: .namePhonePad,
                                       sfSymbol: nil)
                    InputTextFieldView(text: .constant(""),
                                       placeholder: "Occupation",
                                       keyboardType: .namePhonePad,
                                       sfSymbol: nil)
        }
                ButtonView(title:"Sign up"){
                    
                }
    }
            .padding(.horizontal,15)
            .navigationTitle("Register")
            .applyClose()
     }
        
    }
}

 
        


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
