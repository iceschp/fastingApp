//
//  SessionService.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 25/3/2565 BE.
//

import Foundation
import Combine
import FirebaseAuth
import Firebase

enum SessionState {
    case logedIn
    case loggedOut
}
protocol SessionService {
    var state:SessionState{get}
    var userDetails: SessionUserDetails? {get}
    func logout()
}
final class SessionServiceImpl : ObservableObject, SessionService{
    
    
    @Published var state: SessionState = .loggedOut
    @Published var userDetails: SessionUserDetails?
    
    private var handler: AuthStateDidChangeListenerHandle?
    
    init () {
        setupFirebaseAuthHandler()
    }
    
    func logout() {
        try? Auth.auth().signOut()
    }
}
private extension SessionServiceImpl {
    func setupFirebaseAuthHandler() {
        handler = Auth
            .auth()
            .addStateDidChangeListener{[weak self] res, user in
                guard let self = self else {return}
                self.state = user == nil ? .loggedOut : .logedIn
                if let uid = user?.uid {
                    self.handleRefresh(with: uid)
                }
            }
    }
    func handleRefresh(with uid: String) {
        
        Database
            .database()
            .reference()
            .child("users")
            .child(uid)
            .observe(.value) {[weak self] snapshot in
                
                guard let self = self,
                      let value = snapshot.value as? NSDictionary,
                      let firstName = value[RegistatonKeys.firstName.rawValue] as? String,
                      let lastName = value[RegistatonKeys.lastName.rawValue] as? String,
                      let Weight = value[RegistatonKeys.Weight.rawValue]as? String,
                      let Height_1 = value[RegistatonKeys.Height_1.rawValue]as? String
                        
                else{
                    return
                }
                
                DispatchQueue.main.async {
                    self.userDetails = SessionUserDetails(firstName: firstName,
                                                          lastName: lastName,
                                                          Weight: Weight,
                                                          Height_1: Height_1
                    )
                }
            }
    }
}
