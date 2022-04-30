//
//  BoiledMealView.swift
//  fastingApp
//
//  Created by Warunya on 28/4/2565 BE.
//

import SwiftUI

struct BoiledMealView: View {
    var body: some View {
        
        ScrollView {
            LazyVStack(alignment: .leading) {
                Text("เมนูต้ม 🥘")
                    .font(.title)
                
                Divider()
                
                ForEach(meals) { meal in
                    if meal.category == "boiled" {
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

struct BoiledMealView_Previews: PreviewProvider {
    static var previews: some View {
        BoiledMealView()
    }
}
