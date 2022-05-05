//
//  RegistrationDetails.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 24/3/2565 BE.
//

struct RegistrationDetails {
    var email: String
    var password: String
    var firstName: String
    var lastName:String
    var Weight:String
    var Height_1:String
}
extension RegistrationDetails {
    static var new: RegistrationDetails {
        RegistrationDetails(
                            email:"",
                            password:"",
                            firstName:"",
                            lastName:"",
                            Weight: "",
                            Height_1: "")
    }
}
