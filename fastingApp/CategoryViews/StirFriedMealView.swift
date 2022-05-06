//
//  StirFriedMealView.swift
//  fastingApp
//
//  Created by Warunya on 29/4/2565 BE.
//

import SwiftUI

struct StirFriedMealView: View {
    @EnvironmentObject var modelData: ModelData
    
    
    var filteredStirfried: [Meal] {
        modelData.meals.filter { meal in
            meal.category == "stirfried"
        }
    }

    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            LazyVStack(alignment: .leading) {
                Text("เมนูผัด 🍲")
                    .font(.title)
                
                Divider()
                
                ForEach(filteredStirfried) { meal in
                    
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

struct StirFriedMealView_Previews: PreviewProvider {
    static var previews: some View {
        StirFriedMealView()
            .environmentObject(ModelData())
    }
}
