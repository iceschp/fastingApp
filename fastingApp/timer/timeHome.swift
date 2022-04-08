//
//  chart.swift
//  fastingApp
//
//  Created by Warunya on 30/3/2565 BE.
//

import SwiftUI

struct TimeHome: View {
    @StateObject var fastingManager = FastingManager()
    
    var title: String {
        switch fastingManager.fastingState {
        case .notStarted:
            return "Let's get started"
        case .fasting:
            return "You are now fasting"
        case .feeding:
            return "You are now feeding"
        }
    }
    
    var body: some View {
        ZStack {
            Color(.white).ignoresSafeArea()
            
            content
        }
    }
    
    var content: some View {
        ZStack {
            VStack(spacing: 30) {
                Text("Timer")
                    .font(.system(size: 25)).bold()
                
                // Title
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)
                
                // Fasting Plan
                Text(fastingManager.fastingPlan.rawValue)
                    .bold()
                    .padding(.horizontal, 24)
                    .padding(.vertical, 10)
                    .background(Color.init(uiColor: UIColor(red: 0.851, green: 0.953, blue: 0.996, alpha: 1)))
                    .cornerRadius(20)
                
                Spacer()
            }
            .padding()
            
            VStack(spacing: 20) {
                // Progress ring
                ProgressRing()
                    .environmentObject(fastingManager)
                
                Button {
                    fastingManager.toggleFastingState()
                } label: {
                    Text(fastingManager.fastingState == .fasting ? "End fast" : "Start fasting")
                        .font(.title3).bold()
                        .padding(.horizontal, 30)
                        .padding(.vertical, 10)
                        .foregroundColor(.white)
                        .background(Color.init(uiColor: UIColor(red: 0.922, green: 0.38, blue: 0.239, alpha: 1)))
                        .cornerRadius(20)
                }
                
                HStack(spacing: 60) {
                    // Start time
                    VStack(spacing: 5) {
                        Text(fastingManager.fastingState == .notStarted ? "Start" : "Started")
                            .opacity(0.7)
                        
                        Text(fastingManager.startTime, format: .dateTime.weekday().hour().minute().second())
                            .bold()
                    }
                    
                    // End time
                    VStack(spacing: 5) {
                        Text(fastingManager.fastingState == .notStarted ? "End" : "Ends")
                            .opacity(0.7)
                        
                        Text(fastingManager.endTime, format: .dateTime.weekday().hour().minute().second())
                            .bold()
                    }
                }
            }
            .padding()
        }
        .foregroundColor(.black)
    }
}



struct TimeHome_Previews: PreviewProvider {
    static var previews: some View {
        TimeHome()
    }
}
