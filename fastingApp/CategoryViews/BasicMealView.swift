//
//  BasicMealView.swift
//  fastingApp
//
//  Created by Warunya on 29/4/2565 BE.
//

import SwiftUI

struct BasicMealView: View {
    @EnvironmentObject var modelData: ModelData
    
    var filteredBasic: [Meal] {
        modelData.meals.filter { meal in
            meal.category == "basic"
        }
    }
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            LazyVStack(alignment: .leading) {
                Text("เมนูอื่นๆ 🥗")
                    .font(.title)
                
                Divider()
                
                ForEach(filteredBasic) { meal in
                    
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

struct BasicMealView_Previews: PreviewProvider {
    static var previews: some View {
        BasicMealView()
            .environmentObject(ModelData())
    }
}
