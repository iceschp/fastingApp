//
//  LoginCredentials.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 25/3/2565 BE.
//

import Foundation

struct LoginCredentials {
    var email: String
    var password: String
}
extension LoginCredentials {
    static var new: LoginCredentials {
        LoginCredentials(email: "", password: "")
    }
}
