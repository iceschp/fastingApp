//
//  RegistrationDetails.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 24/3/2565 BE.
//

import Foundation

struct RegistrationDetails {
    var email: String
    var password: String
    var firstName: String
    var lastName:String
    var occupation:String
}
extension RegistrationDetails {
    static var new: RegistrationDetails {
        RegistrationDetails(
                            email:"",
                            password:"",
                            firstName:"",
                            lastName:"",
                            occupation: "")
    }
}
