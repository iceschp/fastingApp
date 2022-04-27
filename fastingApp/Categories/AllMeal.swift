//
//  AllMeal.swift
//  fastingApp
//
//  Created by Warunya on 23/4/2565 BE.
//

import SwiftUI

struct AllMeal: View {
    var body: some View {
        NavigationView {
            List(meals) { meal in
                NavigationLink {
                    MealRecipe(meal: meal)
                } label: {
                    MealRow(meal: meal)
                }
            }
        }
    }
}

struct AllMeal_Previews: PreviewProvider {
    static var previews: some View {
        AllMeal()
    }
}
