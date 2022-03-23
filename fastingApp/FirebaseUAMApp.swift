//
//  FirebaseUAMApp.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 22/3/2565 BE.
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
    @UIApplicationDelegateAdaptor (AppDelegate.self) var delegate
    var body: some Scene{
        WindowGroup{
            NavigationView{
                LoginView()
            }
        }
    }
}
