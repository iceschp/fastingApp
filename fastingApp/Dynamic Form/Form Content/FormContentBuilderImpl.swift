//
//  FormContentBuilderImpl.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 8/4/2565 BE.
//


import Foundation

final class FormContentBuilderImpl {
    
    var content: [FormSectionComponent] {
        
        return [
            FormSectionComponent(items: [
                TextFormComponent(placeholder: "First Name"),
                TextFormComponent(placeholder: "Last Name"),
                TextFormComponent(placeholder: "Email",
                             keyboardType: .emailAddress),
                DateFormComponent(mode: .date),
                ButtonFormItem(title: "Confirm")
            ])
        ]
    }
}
