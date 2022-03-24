//
//  HomeView.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 23/3/2565 BE.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading,
               spacing: 16){
            
            VStack(alignment: .leading, spacing: 16) {
            Text("First Name: <Placeholoer>")
            Text("Last Name: <Placeholoer>")
            Text("Occupation: <Placeholoer>")
            }
            ButtonView(title: "Logout"){
                
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
        }
    }
}
