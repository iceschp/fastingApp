//
//  LoginService.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 25/3/2565 BE.
//

import Foundation
import Combine
import FirebaseAuth
import Alamofire

protocol LoginService {
    func login(with credentials: LoginCredentials) -> AnyPublisher<Void,Error>
}
final class LoginServiceImpl: LoginService{
    func login(with credentials: LoginCredentials) -> AnyPublisher<Void,Error> {
        
        Deferred {
            Future { promise in
                Auth
                    .auth()
                    .signIn(withEmail: credentials.email, password: credentials.password) {res,error in
                        if let err = error {
                            promise(.failure(err))
                        }
                        else {
                            promise(.success(()))
                        }
                    }
             }
        }
        .receive(on: RunLoop.main)
        .eraseToAnyPublisher()
    }
}
