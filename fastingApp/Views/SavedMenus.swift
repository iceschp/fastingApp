//
//  SavedMenus.swift
//  fastingApp
//
//  Created by Warunya on 4/5/2565 BE.
//

import SwiftUI

struct SavedMenus: View {
    var body: some View {
        
        ScrollView {
            LazyVStack (alignment: .leading) {
                
                Text("Saved Menus ❤️")
                    .font(.title)
                
                Divider()
            }
            .navigationBarTitleDisplayMode(.inline)
        }
        .padding(.horizontal)
        
    }
}

struct SavedMenus_Previews: PreviewProvider {
    static var previews: some View {
        SavedMenus()
    }
}
