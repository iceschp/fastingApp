//
//  InputPasswordView.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 22/3/2565 BE.
//

import SwiftUI

struct InputPasswordView: View {
    @Binding var password: String
    let placeholder:String
    let sfSymbol:String?
    private let textFiedLeading: CGFloat = 30
    var body: some View{
        SecureField(placeholder, text: $password)
            .frame(maxWidth: .infinity, minHeight: 44)
            .padding(.leading,sfSymbol == nil ? textFiedLeading / 2 :textFiedLeading)
            .background(
                ZStack(alignment: .leading){
                    if let systemImage = sfSymbol{
                        Image(systemName:systemImage)
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.leading, 5)
                        .foregroundColor(Color.orange)
                        
                    }
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color.orange)
                                
                        }
                    
            )
    }
}


struct InputPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            InputPasswordView(password: .constant(""),
                              placeholder: "Password",
                              sfSymbol: "lock")
                .preview(with: "Input Password View with sfsymbol")
            
            InputPasswordView(password: .constant(""),
                              placeholder: "Password",
                              sfSymbol: nil)
                .preview(with: "Input Password View without sfsymbol")
        }
    }
}
