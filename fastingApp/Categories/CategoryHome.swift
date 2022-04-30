//
//  MenusPlanView.swift
//  fastingApp
//
//  Created by Warunya on 24/3/2565 BE.
//

import SwiftUI
import Alamofire

struct CategoryHome: View {
    var body: some View {
        CategoryBody()
    }
}

struct CategoryBody: View {
    
    var body: some View {
        
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
            }
            .frame( maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            .padding(.bottom, 20)
        
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
