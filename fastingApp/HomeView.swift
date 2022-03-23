//
//  HomeView.swift
//  fastingApp
//
//  Created by Warunya on 23/3/2565 BE.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Header()

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct Header: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("กินนำกันเด้อ")
                        .font(.title).bold()
                }
                
                Spacer(minLength: 0)
                
                Image("picture-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 230)
                
            }
            .padding()
            
//            Spacer(minLength: 0)
            
            VStack {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2), spacing: 10) {
                    
                    ForEach(menus) { menu in
                        
                        CardView(menu: menu)
                    }
                }
                .padding(10)
            }
        }
    }
}

struct CardView: View {
    var menu : Menu
    
    var body: some View {
        VStack {
            Text(menu.name)
                .font(.system(size: 24))
                .padding(.top, 10)
                .padding(.bottom, 10)
            
            Text(menu.icon)
                .font(.system(size: 50))
            
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(menu.subMenu)
                        .font(.system(size: 18)).bold()
                        .padding(.leading)
                    Text(menu.caption)
                        .font(.system(size: 12))
                        .padding(.leading)
                }
                .foregroundColor(.black)
                Spacer(minLength: 0)
            }
            .padding()
        }
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct Menu: Identifiable {
    var id = UUID().uuidString
    var name : String
    var subMenu : String
    var caption : String
    var icon : String
}

var menus = [
    
    Menu(name: "Diet Meal", subMenu: "เมนูอาหารไทย", caption: "รวบรวมมากกว่า 200 เมนู", icon: "🥑"),
    Menu(name: "Drink Water", subMenu: "ดื่มน้ำ", caption: "Stay hydrated", icon: "🥛"),
    Menu(name: "Saved Menus", subMenu: "เมนูที่ถูกบันทึกไว้", caption: "เมนูอาหารไทยที่บันทึกไว้", icon: "❤️"),
    Menu(name: "Note", subMenu: "เมนูอาหารไทย", caption: "รวบรวมมากกว่า 200 เมนู", icon: "🖍")
]

