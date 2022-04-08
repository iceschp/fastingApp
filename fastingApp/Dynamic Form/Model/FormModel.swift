//
//  FormModel.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 8/4/2565 BE.
//

import Foundation
import Alamofire
import ModelIO
import UIKit

protocol FormItem {
    var id: UUID {get}
}

protocol FormSectionItem {
    var id:UUID {get}
    var item : [FormComponent] {get}
    init(item:[FormComponent])
}

// Section Component

    final class FormSectionComponent: FormSectionItem, Hashable {
        var id: UUID = UUID()
        var item: [FormComponent]
        
        init(item: [FormComponent]) {
            self.item = item
        }
        func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
        static func == (lhs: FormSectionComponent, rhs: FormSectionComponent)-> Bool {
            lhs.id == rhs.id
        }
    }
    

// Form Component
class FormComponent {
    var id: UUID = UUID()
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    static func == (lhs: FormComponent, rhs: FormComponent) -> Bool {
        lhs.id == rhs.id
    }
}
// Text Component

final class TextFormComponent: FormComponent {
    let placeholder: String
    let keyboardType: UIKeyboardType
    
    init(placeholder: String,
         keyboardType: UIKeyboardType = .default) {
        self.placeholder = placeholder
        self.keyboardType = keyboardType
    }
}

// Date Component

final class DateComponent: FormComponent {
    let mode: UIDatePicker.Mode
    init(mode: UIDatePicker.Mode){
        self.mode = mode
    }
}
// Button Component

final class ButtonFormComponent: FormComponent{
    
    let title: String
    
    init(title:String){
        self.title = title
    }
}
