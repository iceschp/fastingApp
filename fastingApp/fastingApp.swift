//
//  fastingAppApp.swift
//  fastingApp
//
//  Created by Warunya on 3/3/2565 BE.
//

import SwiftUI

@main
struct fastingApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
