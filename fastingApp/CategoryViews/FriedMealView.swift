//
//  FriedMealView.swift
//  fastingApp
//
//  Created by Warunya on 29/4/2565 BE.
//

import SwiftUI

struct FriedMealView: View {
    @EnvironmentObject var modelData: ModelData
    
    var filteredFried: [Meal] {
        modelData.meals.filter { meal in
            meal.category == "fried"
        }
    }
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            LazyVStack(alignment: .leading) {
                Text("เมนูทอด 🍤")
                    .font(.title)
                
                Divider()
                
                ForEach(filteredFried) { meal in
                    
                    NavigationLink {
                        MealRecipe(meal: meal)
                    } label: {
                        MealRow(meal: meal)
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
            .environmentObject(ModelData())
    }
}
