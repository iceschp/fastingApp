//
//  FriedMealView.swift
//  fastingApp
//
//  Created by Warunya on 29/4/2565 BE.
//

import SwiftUI

struct FriedMealView: View {
    var body: some View {
        
        ScrollView {
            LazyVStack(alignment: .leading) {
                Text("เมนูทอด 🍤")
                    .font(.title)
                
                Divider()
                
                ForEach(meals) { meal in
                    if meal.category == "fried" {
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

struct FriedMealView_Previews: PreviewProvider {
    static var previews: some View {
        FriedMealView()
    }
}
