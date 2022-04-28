//
//  CategoryRow.swift
//  fastingApp
//
//  Created by Warunya on 25/3/2565 BE.
//

import SwiftUI

struct CategoryRow: View {
    //    @Binding var selectedOption: MenuBarOptions
    
    var body: some View {
        
        NavigationView {
        VStack(alignment: .leading) {
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(alignment: .top, spacing: 15) {
                    
                    NavigationLink(destination: AllMeal()) {
                        
                        ForEach(MenuBarOptions.allCases, id: \.self) { category in
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
                
            }
        }
        }
    }

struct GroupDetailView: View {
    var body: some View {
        Text("GroupDetailView")
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow()
    }
}


