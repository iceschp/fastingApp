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
       
        VStack(alignment: .leading,
               spacing: 30){
            VStack{
                Image("Profile")
                
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: UIScreen.main.bounds.height / 4)
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("First Name: \(sessionSservice.userDetails?.firstName ?? "N/A")")
            Text("Last Name: \(sessionSservice.userDetails?.lastName ?? "N/A")")
            Text("Occupation:\(sessionSservice.userDetails?.occupation ?? "N/A")")
            }
            ButtonView(title: "Logout"){
                sessionSservice.logout()
            }
        }
        .padding(.horizontal, 16)
        .navigationTitle("Main ContenView")
 }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HomeView()
                .environmentObject(SessionServiceImpl())
        }
    }
}
