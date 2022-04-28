//
//  Draft.swift
//  fastingApp
//
//  Created by Warunya on 27/4/2565 BE.
//

import SwiftUI

struct Draft: View {
    @State var txt = ""
    
    
    var body: some View {
        
        NavigationView {
            List {
                
                VStack(spacing: 30) {
                    Text("วันนี้ทานอะไรดีคะ?")
                        .font(.system(size: 25).bold())
                        .foregroundColor(Color.init(uiColor: UIColor(red: 0.945, green: 0.659, blue: 0.745, alpha: 1)))
                        .padding(.top, 10)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        
                        TextField("ค้นหาเมนูอาหาร...", text: $txt)
                            .font(.system(size: 18))
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(Capsule())
                    .padding(.horizontal, 15)
                }
                .padding(.vertical, 40)
                .listRowBackground(Color.init(uiColor: UIColor(red: 0.176, green: 0.412, blue: 0.282, alpha: 1)))
                
                
                VStack(alignment: .leading) {
                    Text("ประเภทอาหาร")
                        .font(.system(size: 20)).bold()
                }
                
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
                
                HStack {
                    Image("picture-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .offset(x: -20, y: -5)
                    
                    Text("สุขภาพที่ดี\nเริ่มได้ที่ตัวเรา")
                        .font(.system(size: 26))
                        .foregroundColor(.black)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 120, maxHeight: 120)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.black, lineWidth: 1)
                )
                .background(Color.init(uiColor: UIColor(red: 0.851, green: 0.953, blue: 0.996, alpha: 1)))
                .cornerRadius(30)
                
                
                
                ForEach(meals) { meal in
                    NavigationLink {
                        MealRecipe(meal: meal)
                    } label: {
                        MealRow(meal: meal)
                    }
                }
            }
            .frame( maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            .listStyle(GroupedListStyle())
            .listRowSeparator(.hidden)
        }
        
        
    }
    
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}
