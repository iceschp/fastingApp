//
//  CategoryRow.swift
//  fastingApp
//
//  Created by Warunya on 25/3/2565 BE.
//

import SwiftUI

struct CategoryRow: View {
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 15) {
                
                ForEach(MenuBarOptions.allCases, id: \.self) { category in
                    
                    NavigationLink(
                        destination:
                                    Group {
                        if category == MenuBarOptions.boiled {
                            BoiledMealView()
                        } else if category == MenuBarOptions.fried {
                            FriedMealView()
                        } else if category == MenuBarOptions.stirFried {
                            StirFriedMealView()
                        } else {
                            BasicMealView()
                        }
                    }) {
                        VStack(spacing: 10) {
                            Text(category.icon)
                                .font(.system(size: 40))
                            Text(category.title)
                                .font(.system(size: 14).bold())
                                .foregroundColor(.black)
                        }
                        .frame(width: 100, height: 120)
                        .background(Color.init(uiColor: category.bgColor))
                        .cornerRadius(10)
                    }
                    
                }
                
            }
        }
        .padding(.leading)
        .padding(.bottom)
        
    }
}


struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow()
    }
}


