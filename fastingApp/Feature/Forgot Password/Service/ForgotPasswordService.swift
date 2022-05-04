//
//  ForgotPasswordService.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 25/3/2565 BE.
//
//

import Foundation
import Firebase
import Combine

protocol ForgotPasswordService {
    func sendPasswordResetRequest(to email: String) -> AnyPublisher<Void, Error>
}

final class ForgotPasswordServiceImpl: ForgotPasswordService {
    
    func sendPasswordResetRequest(to email: String) -> AnyPublisher<Void, Error> {
        
        Deferred {
            Future { promise in
                Auth
                    .auth()
                    .sendPasswordReset(withEmail: email) { error in
                        
                        if let err = error {
                            promise(.failure(err))
                        } else {
                            promise(.success(()))
                        }
                    }
            }
        }
        .eraseToAnyPublisher()
    }
}
