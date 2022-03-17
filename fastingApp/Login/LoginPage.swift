//
//  LoginPage.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 16/3/2565 BE.
//

import SwiftUI

struct LoginPage: View {
    @StateObject var loginModel: LoginViewModel = LoginViewModel()
    // MARK: FaceID Properties
    @AppStorage("use_face_id") var useFaceID: Bool = false
    var body: some View {
        VStack{
            Circle()
                .trim(from: 0, to: 0.5)
                .fill(.black)
                .frame(width: 45, height: 45)
                .rotationEffect(.init(degrees: -90))
                .hLeading()
                .offset(x: -23)
                .padding(.bottom,30)
            Text("Het,\nLogin Now")
                .font(.largeTitle.bold())
                .foregroundColor(.black)
                .hLeading()
            // MARK: Textfields
            TextField("Email",text: $loginModel.email)
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            loginModel.email == ? Color.black.opacity(0.05):
                                Color("Orange")
                        )
                }
                .textInputAutocapitalization(.never)
                .padding(.top,20)

            
            SecureField("Password",text: $loginModel.password)
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            loginModel.password == "" ? Color.black.opacity(0.05):
                                Color("Orange")
                        )
                }
                .textInputAutocapitalization(.never)
                .padding(.top,15)
            // MARK: User Prompt to ask to store Login using FaceID on next time
            Group{
                if useFaceID{
                    Button{
                        // MARK: Do Face ID Action
                        Task{
                            do{
                                try await loginModel.loginUser()
                            }
                            catch{
                                print(error.localizedDescription)
                            }
                        }
                    } Label: {
                        VStack(alignment: .leading, spacing: 10) {
                            Label {
                                Text("Use Face ID to login into pervious account")
                            } icon: {
                                Image(systemName: "faceid")
                            }
                            .font(.caption)
                            .foregroundColor(.gray)
                            Text("Note: You can turn of it in setting!")
                                .font(.caption2)
                                .foregroundColor(gray)
                        }
                        
                    }
                }
                else{
                    Toggle(isOn: $useFaceID) {
                        Text("Use FaceID to Loing")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(.vertical, 20)
            Button {
                Task{
                    do{
                        try await loginModel.loginUser()
                    }
                    catch{
                        loginModel.errorMsg = error.localizedDescription
                        loginModel.showError.toggle()
                    }
                }
            } label: {
                Text("Login")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .hCenter()
                    .background{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("Brown"))
                    }
            }
            .padding(.vertical,35)
            .disabled(loginModel.email == "" || loginModel.password, =="")
            .opacity(loginModel.email == "" || loginModel.password, =="" ? 0.5 : 1)
            NavigationLink{
                //MARK Going home without login
            Label: do {
                Text("Skip Now")
                    .foregroundColor(.gray)
            }
            }
        }
        .padding(.horizontal,25)
        .padding(.vertical)
        .alert(loginModel.errorMsg, isPresented: $loginModel.showError)
        

    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
// MARK: Extensions for UI Designing
extension View{
    func hLeading()->some View{
        self
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}
