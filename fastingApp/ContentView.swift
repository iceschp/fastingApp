//
//  ContentView.swift
//  fastingApp
//
//  Created by Warunya on 3/3/2565 BE.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @State private var selectedIndex = 0
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = .orange
        UITabBar.appearance().barTintColor = .red
    }
    
    struct HomeView: View {
        var body: some View {
            ZStack {
                Text("กินนำกันเด้อ")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .frame(width: 200, height: 30)
                    .position(x: 100, y: 50)
                
                Image("picture-1")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .position(x: 280, y: 150)
                
                VStack {
                    Text("สุขภาพที่ดีเริ่มได้ที่ตัวเรา")
                        .foregroundColor(.white)
                        .frame(width: 300, height: 30)
                        .position(x: 100, y: 120)
                }
                
            }
            .background(Color.orange.ignoresSafeArea(.all, edges: .top))
            .background(Color.white.ignoresSafeArea(.all, edges: .bottom))
        }
    }
    
    struct ChartView: View {
        var body: some View {
            Color.pink
        }
    }
    
    struct AccountView: View {
        var body: some View {
            Color.blue
        }
    }
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
                .tag(0)
            
            ChartView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                }
                .tag(1)
            
            AccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                }
                .tag(2)
        }
        .accentColor(.black)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
