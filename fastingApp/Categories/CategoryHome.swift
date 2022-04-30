//
//  MenusPlanView.swift
//  fastingApp
//
//  Created by Warunya on 24/3/2565 BE.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        CategoryBody()
    }
}

struct CategoryBody: View {
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    
                    MealHeader()
                    
                    VStack(alignment: .leading) {
                        Text("ประเภทอาหาร")
                            .font(.system(size: 20)).bold()
                    }
                    .padding()
                    
                    CategoryRow()
                    
                    Banner()
                    
                    HStack {
                        Text("เมนูประจำเดือนนี้ 🔥")
                            .font(.system(size: 20)).bold()
                    }
                    .padding()
                    
                    
                    ForEach(meals) { meal in
                        if meal.special == "เมนูพิเศษเฉพาะเดือนนี้" {
                            NavigationLink {
                                MealRecipe(meal: meal)
                            } label: {
                                MealRow(meal: meal)
                            }
                        }
                        
                    }
                    .padding(.horizontal)
                    
                }
                .navigationBarTitleDisplayMode(.inline)
            }
            .frame( maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
            .padding(.bottom, 20)
        }
        .accentColor(.black)
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
