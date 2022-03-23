//
//  LoginViewModel.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 16/3/2565 BE.
//

import SwiftUI
import Firebase
import LocalAuthentication

class LoginViewModel: ObservedObject<<#ObjectType: ObservableObject#>> {
    
    @Published var email:String = ""
    @Published var password:String = ""
    
    // MARK: FaceID Properties
    @AppStorage("use_face_id") var useFaceID : Bool = false
    @AppStorage("use_face_email") var faceIDEmail: String = ""
    @AppStorage("use_face_password") var faceIDPassword : String = ""
    //Log Status
    @AppStorage("log_status") var logStatus : Bool = false

    // MARK: error
    @Published var showError: Bool = false
    @Published var errorMsg: String = ""
    // MARK: Firebase Loing
    func loginUser(useFaceID: Bool ) async throws{
        let _ = try await Auth.auth().signIn(withEmail: email, password:password)
        if useFaceID{
            self.useFaceID = useFaceID
            //MARK: Storing for future face ID Login
            faceIDEmail = email
            faceIDPassword = password
        }
        logStatus = true
    }
    // MARK: FaceID Usage
    func getBioMetricStatus()->Bool{
        let scanner = LAContext()
        return scanner.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics,error: .none)
        
    }
    //MARK: FaceID Login
    func authenticateUesr()async throws{
        let status = try await LAContext().evaluatedPolicyDomainState(.deviceOwnerAuthenticationWithBiometrics, LocalizedReason:"To Login Into App")
        if status{
            try await loginUser(useFaceID: useFaceID)
        }
    }
}

    

