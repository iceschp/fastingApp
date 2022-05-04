//
//  SavedMenus.swift
//  fastingApp
//
//  Created by Warunya on 4/5/2565 BE.
//

import SwiftUI

struct SavedMenus: View {
    @State private var showFavoritesOnly = true
    
    var filteredMealData: [Meal] {
            meals.filter { meal in
                (!showFavoritesOnly || meal.isFavorite)
            }
        }
    
    
    var body: some View {
        
        ScrollView {
            LazyVStack (alignment: .leading) {
                
                Text("Saved Menus ❤️")
                    .font(.title)
                
                Divider()
                
                ForEach(filteredMealData) { meal in
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

struct SavedMenus_Previews: PreviewProvider {
    static var previews: some View {
        SavedMenus()
    }
}
