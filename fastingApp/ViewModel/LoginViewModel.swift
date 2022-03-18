////
////  LoginViewModel.swift
////  fastingApp
////
////  Created by Milk Jiraporn on 16/3/2565 BE.
////
//
//import SwiftUI
//import Firebase
//
//class LoginViewModel: ObservedObject {
//    
//    @Published var email:String = ""
//    @Published var password:String = ""
//    
//    // MARK: FaceID Properties
//    @AppStorage("use_face_id") var useFaceID : Bool = false
//    @AppStorage("use_face_email") var faceIDEmail: String = ""
//    @AppStorage("use_face_password") var faceIDPassword : String = ""
//    //Log Status
//    @AppStorage("use_face_password") var logStatus : String = ""
//
//    // MARK: error
//    @Published var showError: Bool = false
//    @Published var errorMsg: String = ""
//    // MARK: Firebase Loing
//    func loginUser(useFaceID: Bool)->async throws{
//        let _ = try await Auth.auth().signIn(withEmail: email , password:password)
//        if useFaceID{
//            self.useFaceID = use
//            //MARK: Storing for future face ID Login
//            faceIDEmail = email
//            faceIDPassword = password
//        }
//        logStatus = true
//    }
//    
//}
//
//    
//
