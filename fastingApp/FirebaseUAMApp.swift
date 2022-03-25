//
//  FirebaseUAMApp.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 25/3/2565 BE.
//

import SwiftUI
import Firebase

final class AppDelegate: NSObject,UIApplicationDelegate {
    func application(_ application: UIApplication,didFinishLaunchWith launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil)->Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct FirebaseUAMApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var sessionService =  SessionServiceImpl()
    var body: some Scene{
        WindowGroup{
            NavigationView{
                switch sessionService.state {
                case .logedIn:
                    HomeView()
                        .environmentObject(sessionService)
                case .loggedOut:
                    LoginView()
                }
                
            }
        }
    }
}
