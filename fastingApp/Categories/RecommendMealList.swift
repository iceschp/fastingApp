//
//  RecommendMealList.swift
//  fastingApp
//
//  Created by Warunya on 22/4/2565 BE.
//

import SwiftUI

struct RecommendMealList: View {
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(meals) { meal in
                    NavigationLink {
                        MealRecipe(meal: meal)
                    } label: {
                        MealRow(meal: meal)
                    }
                }
            }
        }
        
        
        
    }
}

struct RecommendMealList_Previews: PreviewProvider {
    static var previews: some View {
        RecommendMealList()
    }
}

//
//    .background(.white)
//    .cornerRadius(10)
//    .shadow(color: Color.init(uiColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 2, x: 2, y: 2)

//            HStack {
//                Text("เมนูที่น่าสนใจ 🔥")
//                    .font(.system(size: 20)).bold()
//
//                Spacer()
//
//                NavigationLink {
//
//                } label: {
//                    HStack(spacing: 4) {
//                        Text("ดูทั้งหมด")
//                        Image(systemName: "chevron.right")
//                    }
//                    .foregroundColor(.blue)
//                }
//            }
