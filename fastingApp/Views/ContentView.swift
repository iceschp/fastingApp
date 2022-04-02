//
//  ContentView.swift
//  fastingApp
//
//  Created by Warunya on 3/3/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomTabView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTabView: View {
    
    @State var selectedTab = "home"
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            Header()
            
            TabView(selection: $selectedTab) {
                Header()
                    .tag("home")
                CategoryHome()
                    .tag("barchart")
                TimeHome()
                    .tag("person")
            }
            
            HStack(spacing: 0){
                ForEach(tabs, id: \.self) { image in
                    
                    TabButton(image: image, selectedTab: $selectedTab)
                    
                    if image != tabs.last {
                        Spacer(minLength: 0)
                    }
                    
                }
            }
            .padding(.horizontal,25)
            .padding(.vertical,5)
            .background(Color.init(uiColor: UIColor(red: 0.922, green: 0.38, blue: 0.239, alpha: 1)))
        }
    }
}

var tabs = ["home", "barchart", "person"]

struct TabButton: View {
    
    var image : String
    @Binding var selectedTab : String
    
    var body: some View {
        Button(action: {selectedTab = image}) {
            Image(image)
                .renderingMode(.template)
                .foregroundColor(selectedTab == image ? Color.white : Color.black)
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
                        .font(.system(size: 14))
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
            .background(Color.init(uiColor: UIColor(red: 0.922, green: 0.38, blue: 0.239, alpha: 1))).edgesIgnoringSafeArea(.all)
            
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
        .background(Color.init(uiColor: UIColor(red: 0.851, green: 0.953, blue: 0.996, alpha: 1)))
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
    Menu(name: "Note", subMenu: "บันทึก", caption: "จดบันทึกไดอารี่", icon: "🖍")
]
