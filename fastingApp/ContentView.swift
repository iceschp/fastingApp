//
//  ContentView.swift
//  fastingApp
//
//  Created by Warunya on 3/3/2565 BE.
//

import SwiftUI

struct ContentView: View {
    //Log Status
    @AppStorage("log_status") var logStatus : Bool = false
    var body: some View {
        Text("Test text content")
            .padding()
        NavigationView {
            if logStatus{
                Home()
            }else{
                LoginPage
                .navigationBarHidden(true)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
