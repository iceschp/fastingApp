//
//  PreviewLayoutComponentModifier.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 22/3/2565 BE.
//

import SwiftUI

struct PreviewLayoutComponentModifier: ViewModifier {
    
    let name: String

       
        func body(content: Content) -> some View {
            
            content
                .previewLayout(.sizeThatFits)
                .previewDisplayName(name)
                .padding()
        }
    }
extension View {
    func preview(with name:String) -> some View {
        self.modifier(PreviewLayoutComponentModifier(name: name))
    }
}
