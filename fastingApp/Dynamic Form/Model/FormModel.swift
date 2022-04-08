//
//  FormModel.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 8/4/2565 BE.
//

import Foundation
import Alamofire
import ModelIO

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
    
}

