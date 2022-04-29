//
//  fastingAppApp.swift
//  fastingApp
//
//  Created by Warunya on 3/3/2565 BE.
//

import SwiftUI
import Firebase

final class AppDelegate: NSObject,UIApplicationDelegate {
    func application(_ application: UIApplication,
                         didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            FirebaseApp.configure()
            return true
        }
}
@main
struct fastingAppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var sessionService =  SessionServiceImpl()
    var body: some Scene{
        WindowGroup{
            NavigationView{
                switch sessionService.state {
                case .logedIn:
                    // Home page ICE
                    HomeView()
                        .environmentObject(sessionService)
                case .loggedOut:
                    LoginView()
                }

            }
        }
    }
}


