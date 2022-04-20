//
//  CategoryItem.swift
//  fastingApp
//
//  Created by Warunya on 8/4/2565 BE.
//

import SwiftUI

struct CategoryItem: View {
    //    var meal: Meal
    //    var category: Category
    
    var body: some View {
        HStack {
            VStack {
                Button(action: {}) {
                    VStack(spacing: 10) {
                        Text("🥘")
                            .font(.system(size: 40))
                        Text("เมนูต้ม")
                            .font(.system(size: 14).bold())
                            .foregroundColor(.black)
                    }
                    .frame(width: 100, height: 120)
                    .background(Color.init(uiColor: UIColor(red: 0.937, green: 0.89, blue: 0.298, alpha: 1)))
                    .cornerRadius(10)
                }
            }
            
            VStack {
                Button(action: {}) {
                    VStack(spacing: 10) {
                        Text("🍲")
                            .font(.system(size: 40))
                        Text("เมนูผัด")
                            .font(.system(size: 14).bold())
                            .foregroundColor(.black)
                    }
                    .frame(width: 100, height: 120)
                    .background(Color.init(uiColor: UIColor(red: 0.945, green: 0.659, blue: 0.745, alpha: 1)))
                    .cornerRadius(10)
                }
            }
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem()
    }
}

//struct Category: Identifiable {
//    var id = UUID().uuidString
//    var name : String
//    var icon : String
//}
//
//var categories = [
//    Category(name: "เมนูต้ม", icon: "🥘"),
//    Category(name: "เมนูผัด", icon: "🍲"),
//    Category(name: "เมนูแกง", icon: "🍛"),
//    Category(name: "เมนูทอด", icon: "🍤")
//]
