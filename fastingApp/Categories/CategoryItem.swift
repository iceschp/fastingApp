//
//  CategoryItem.swift
//  fastingApp
//
//  Created by Warunya on 8/4/2565 BE.
//

import SwiftUI

struct CategoryItem: View {
    
    var body: some View {
        VStack {
            Text("🥘")
                .font(.system(size: 70))
            Text("เมนูต้ม")
                .font(.title3.bold())
        }
        .padding(30)
        .background(Color.init(uiColor: UIColor(red: 0.937, green: 0.89, blue: 0.298, alpha: 1)))
        .cornerRadius(20)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem()
    }
}

