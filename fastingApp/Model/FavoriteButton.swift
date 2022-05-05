//
//  FavoriteButton.swift
//  fastingApp
//
//  Created by Warunya on 4/5/2565 BE.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .font(.system(size: 28))
                .foregroundColor(isSet ? .red : .gray)
        }
        
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
