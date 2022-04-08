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
            
            FormSectionComponent(item: [
                
                TextFormComponent(placeholder: ""),
                TextFormComponent(placeholder: ""),
                TextFormComponent(placeholder: "Email",
                                  keyboardType: .emailAddress),
                DateComponent(mode: .date),
                ButtonComponent(title: "Confirm")
            ])
        ]
    }
}
