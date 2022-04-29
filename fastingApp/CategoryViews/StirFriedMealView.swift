//
//  StirFriedMealView.swift
//  fastingApp
//
//  Created by Warunya on 29/4/2565 BE.
//

import SwiftUI

struct StirFriedMealView: View {
    var body: some View {
        
        ScrollView {
            LazyVStack(alignment: .leading) {
                Text("เมนูผัด 🍲")
                    .font(.title)
                
                Divider()
                
                ForEach(meals) { meal in
                    if meal.category == "stirfried" {
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

struct StirFriedMealView_Previews: PreviewProvider {
    static var previews: some View {
        StirFriedMealView()
    }
}
