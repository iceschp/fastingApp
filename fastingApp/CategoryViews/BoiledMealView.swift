//
//  BoiledMealView.swift
//  fastingApp
//
//  Created by Warunya on 28/4/2565 BE.
//

import SwiftUI

struct BoiledMealView: View {
    @EnvironmentObject var modelData: ModelData
    
    var filteredBoiled: [Meal] {
        modelData.meals.filter { meal in
            meal.category == "boiled"
        }
    }
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            LazyVStack(alignment: .leading) {
                Text("เมนูต้ม 🥘")
                    .font(.title)
                
                Divider()
                
                ForEach(filteredBoiled) { meal in
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

struct BoiledMealView_Previews: PreviewProvider {
    static var previews: some View {
        BoiledMealView()
            .environmentObject(ModelData())
    }
}
