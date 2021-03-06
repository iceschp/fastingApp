//
//  InputTextFieldView.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 22/3/2565 BE.
//

import SwiftUI

struct InputTextFieldView: View {
    @Binding var text : String
    let placeholder :String
    let keyboardType : UIKeyboardType
    let sfSymbol: String?

    private let textFieldLeading: CGFloat = 40
    
    var body: some View {
        VStack {
            TextField(placeholder, text: $text)
                .frame(maxWidth: .infinity, minHeight: 44)
                .padding(.leading ,sfSymbol == nil ? textFieldLeading / 2 : textFieldLeading)
                .keyboardType(keyboardType)
                .background(
                    ZStack(alignment: .leading) {
                        if let systemImage = sfSymbol {
                            Image (systemName: systemImage)
                                .font(.system(size: 16, weight: .semibold))
                                .padding(.leading,5)
                                .foregroundColor(Color.orange)
                        }
                        RoundedRectangle(cornerRadius: 10,
                                         style: .continuous)
                            .stroke(Color.orange)
                    }
            )
        }
    }
}

struct InputTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            InputTextFieldView( text: .constant(""),
                                placeholder: "Email",
                                keyboardType: .emailAddress,
                                sfSymbol: "envelope")
                                    .preview(with: "Email Text Input with sfsymbol")
                                   
            
            InputTextFieldView( text: .constant(""),
                                placeholder: "First Name",
                                keyboardType: .default,
                                sfSymbol: nil)
                .preview(with: "Frist Name Text Input with sfsymbol")
        }
    }
}
