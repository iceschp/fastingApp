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
        UITabBar.appearance().barTintColor = .blue
    }
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            Text("Home tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "house.fill")
                }

            Text("Statistic tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                }

            Text("Account tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }
        .accentColor(.black)
        
//        VStack {
//            Text("Home")
//
//            ZStack {
//                Image("picture-1")
//                    .resizable()
//                    .frame(width: 200, height: 200)
//                    .position(x: 250, y: 200)
//            }
//
//            HStack {
//
//            }
//        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
