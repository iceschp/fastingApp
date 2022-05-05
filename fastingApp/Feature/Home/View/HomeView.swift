//
//  HomeView.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 23/3/2565 BE.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var sessionSservice: SessionServiceImpl
    var body: some View {
        
        VStack(alignment: .leading, spacing: 30) {
            Text("Profile")
                .font(.title)
            
            VStack {
                HStack {
                    Image("Profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:200)
                        .padding(70)
                }
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("First Name: \(sessionSservice.userDetails?.firstName ?? "N/A")")
                Text("Last Name: \(sessionSservice.userDetails?.lastName ?? "N/A")")
                Text("Weight: \(sessionSservice.userDetails?.Weight ?? "N/A")")
                Text("Height: \(sessionSservice.userDetails?.Height_1 ?? "N/A")")
            }
            
            ButtonView(title: "Logout"){
                sessionSservice.logout()
            }
            
        }
        .padding(.horizontal,16)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(SessionServiceImpl())
    }
}
