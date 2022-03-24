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

struct CustomTabView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            Header()
            
            HStack(spacing: 0){
                
            }
        }
    }
}

var tabs = ["Home", "Chart", "Account"]

struct TabButton: View {
    
    var image : String
    @Binding var selectedTab : String
    
    var body: some View {
        Button(action: {selectedTab = image}) {
            Image(image)
                .renderingMode(.template)
                .foregroundColor(selectedTab == image ? Color("tab") : Color.black.opacity(0.4))
                .padding()
        }
    }
}

struct Header: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("กินนำกันเด้อ")
                        .font(.system(size: 35)).bold()
                    
                    Text("สุขภาพที่ดีเริ่มต้นที่ตัวเรา")
                        .foregroundColor(.white)
                }
                Spacer(minLength: 0)
                
                ZStack {
                    Image("picture-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(x: 20, y: 45)
                }
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
            .background(Color.orange).edgesIgnoringSafeArea(.all)
            
            Spacer(minLength: 0)
            
            VStack {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2), spacing: 15) {
                    
                    ForEach(menus) { menu in
                        CardView(menu: menu)
                    }
                }
                .padding(10)
                Spacer(minLength: 0)
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
                    .padding(.top, 15)
                    .padding(.bottom, 10)
            
            Spacer(minLength: 5)
            
            Text(menu.icon)
                .font(.system(size: 70))
            
            Spacer(minLength: 5)
            
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(menu.subMenu)
                        .font(.system(size: 18)).bold()
                    Text(menu.caption)
                        .font(.system(size: 12))
                }
                .foregroundColor(.black)
                .padding(.bottom, 5)
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
    var color : String
}

var menus = [
    
    Menu(name: "Diet Meal", subMenu: "เมนูอาหารไทย", caption: "รวบรวมมากกว่า 200 เมนู", icon: "🥑", color: "yellow"),
    Menu(name: "Drink Water", subMenu: "ดื่มน้ำ", caption: "Stay hydrated", icon: "🥛", color: "blue"),
    Menu(name: "Saved Menus", subMenu: "เมนูที่ถูกบันทึกไว้", caption: "เมนูอาหารไทยที่บันทึกไว้", icon: "❤️", color: "green"),
    Menu(name: "Note", subMenu: "เมนูอาหารไทย", caption: "รวบรวมมากกว่า 200 เมนู", icon: "🖍", color: "pink")
]

