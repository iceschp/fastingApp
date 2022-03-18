//
//  Home.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 17/3/2565 BE.
//

import SwiftUI
import firebase

struct Home: View {
    // Log Status
    @AppStorage("log_status") var logStatus: Bool = false
    var body: some View {
        VStack(spacing:20){
            if logStatus{
                Text("Logged in")
                Button("Logout"){
                    try? Auth.auth().signOut()
                    logStatus = false
                }
            }
            else{
                Text("Came as Guset")
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Home")
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
