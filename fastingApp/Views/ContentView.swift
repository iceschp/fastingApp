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
            .environmentObject(ModelData())
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
                TimeHome()
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
            //            .padding(.vertical,5)
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
                .padding(.horizontal)
                .padding(.top)
        }
    }
}

struct Header: View {

    var body: some View {
        
        NavigationView {
            
            VStack {
                
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("กินนำกันเด้อ")
                            .font(.system(size: 35)).bold()
                        
                        Text("สุขภาพที่ดีเริ่มต้นที่ตัวเรา")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    ZStack {
                        Image("picture-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .offset(x: 20, y: 45)
                    }
                }
                .padding(.horizontal)
                .background(Color.init(uiColor: UIColor(red: 0.922, green: 0.38, blue: 0.239, alpha: 1))).edgesIgnoringSafeArea(.all)
                
                
                VStack {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2), spacing: 15) {
                        
                        ForEach(HomeMenuCards.allCases, id: \.self) { menu in
                            NavigationLink(
                                destination:
                                    Group {
                                        if menu == HomeMenuCards.thaifood {
                                            CategoryHome()
                                        } else if menu == HomeMenuCards.savedMenus {
                                            SavedMenus()
                                        } else {
                                            FriedMealView()
                                        }
                                    })
                            {
                                CardView(HomeMenuCard: menu)
                            }
                        }
                    }
                    .padding()
                }
                
            }
        
        }
        .edgesIgnoringSafeArea(.all)
        .frame( maxWidth: .infinity)
        .accentColor(.black)
    }
}

struct CardView: View {
    var HomeMenuCard: HomeMenuCards
    
    var body: some View {
        VStack {
            Text(HomeMenuCard.name)
                .font(.system(size: 22))
                .padding(.top, 15)
                .padding(.bottom, 10)
                .foregroundColor(.black)
            
            Spacer(minLength: 5)
            
            Text(HomeMenuCard.icon)
                .font(.system(size: 70))
            
            Spacer(minLength: 5)
            
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(HomeMenuCard.subMenu)
                        .font(.system(size: 18)).bold()
                    Text(HomeMenuCard.caption)
                        .font(.system(size: 12))
                }
                .foregroundColor(.black)
                .padding(.bottom, 5)
                Spacer(minLength: 0)
            }
            .padding()
        }
        .background(Color.init(uiColor: HomeMenuCard.bgColor))
        .cornerRadius(20)
    }
}

