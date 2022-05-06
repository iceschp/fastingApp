//
//  RegisterView.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 23/3/2565 BE.
//
import SwiftUI

struct RegisterView: View {
    @StateObject private var  vm = RegistrationViewModelImpl(
        service: RegistrationServiceImpl()
    )
    var body: some View {
        NavigationView {
            VStack(spacing: 32){
                VStack{
                    HStack (spacing: 0){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("Color1"))
                            .frame(width: 150, height: 150)
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("Color4"))
                            .frame(width: 400, height: 150)
                    }
                    
                    Image("login")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .padding(.horizontal,-170)
                        .padding(.vertical,-140)
                        .padding(10)
                }
                VStack(spacing: 16){
                    InputTextFieldView(text: $vm.userDetails.email,
                                       placeholder: "Email",
                                       keyboardType: .emailAddress,
                                       sfSymbol: "envelope")
                    InputPasswordView(password: $vm.userDetails.password,
                                      placeholder: "Password",
                                      sfSymbol: "lock")
                    
                    Divider()
                    InputTextFieldView(text: $vm.userDetails.firstName,
                                       placeholder: "FirstName",
                                       keyboardType: .namePhonePad,
                                       sfSymbol: nil)
                    
                    InputTextFieldView(text: $vm.userDetails.lastName,
                                       placeholder: "LastName",
                                       keyboardType: .namePhonePad,
                                       sfSymbol: nil)
                    
                    InputTextFieldView(text: $vm.userDetails.Weight,
                                       placeholder: "Weight ",
                                       keyboardType: .namePhonePad,
                                       sfSymbol: nil)
                    InputTextFieldView(text: $vm.userDetails.Height_1,
                                       placeholder: "Height",
                                       keyboardType: .namePhonePad,
                                       sfSymbol: nil)
                }
                
                ButtonView(title:"Sign Up"){
                    vm.register()
                }
            }
            .padding(.horizontal,15)
//            .navigationTitle("Register")
            .applyClose()
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
}
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
