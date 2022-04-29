//
//  BasicMealView.swift
//  fastingApp
//
//  Created by Warunya on 29/4/2565 BE.
//

import SwiftUI

struct BasicMealView: View {
    var body: some View {
        
        ScrollView {
            LazyVStack(alignment: .leading) {
                Text("เมนูอื่นๆ 🥗")
                    .font(.title)
                
                Divider()
                
                ForEach(meals) { meal in
                    if meal.category == "basic" {
                        NavigationLink {
                            MealRecipe(meal: meal)
                        } label: {
                            MealRow(meal: meal)
                        }
                    }
                    
                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
        }
        .padding(.horizontal)
        
    }
}

struct BasicMealView_Previews: PreviewProvider {
    static var previews: some View {
        BasicMealView()
    }
}
