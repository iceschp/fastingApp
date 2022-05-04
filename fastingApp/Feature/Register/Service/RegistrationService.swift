//
//  RegistrationService.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 24/3/2565 BE.
//

import Foundation
import Combine
import FirebaseDatabase
import Firebase
import SwiftUI

enum RegistatonKeys:String {
    case firstName
    case lastName
    case occpation
}

protocol RegistrationService {
    func register(with details: RegistrationDetails) -> AnyPublisher <Void,Error>
}
final class RegistrationServiceImpl: RegistrationService{
    
        func register(with details: RegistrationDetails) -> AnyPublisher <Void,Error>{
            Deferred {
                
                Future { promise in
                    
                    Auth.auth()
                        .createUser(withEmail:details.email , password: details.password) {res,error in
                            if let err = error {
                                promise(.failure(err))
                            }else{
                                if let uid = res?.user.uid {
                                    let values = [RegistatonKeys.firstName.rawValue: details.firstName,
                                                 RegistatonKeys.lastName.rawValue: details.lastName,
                                                  RegistatonKeys.occpation.rawValue: details.occupation] as [String :Any]
                                    Database.database()
                                        .reference()
                                        .child("users")
                                        .child(uid)
                                        .updateChildValues(values){ error,ref in
                                            if let err = error {
                                                promise(.failure(err))
                                            }else{
                                                promise(.success(()))
                                            }
                                        }
                                }else {
                                    promise(.failure(NSError(domain: "Invalid User Id", code: 0, userInfo: nil)))
                                }
                                
                                
                            }
                        }
                }
            }
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
        }
    }
    

