//
//  progressRing.swift
//  fastingApp
//
//  Created by Warunya on 2/4/2565 BE.
//

import SwiftUI

struct ProgressRing: View {
    @EnvironmentObject var fastingManager: FastingManager
    
    let timer = Timer
        .publish(every: 1, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        ZStack {
            // Placeholder Ring
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(.gray)
                .opacity(0.1)
            
            // Colored Ring
            Circle()
                .trim(from: 0.0, to: min(fastingManager.progress, 1.0))
                .stroke(Color.init(uiColor: UIColor(red: 0.937, green: 0.89, blue: 0.298, alpha: 1)), style: StrokeStyle(lineWidth: 15.0, lineCap: .round, lineJoin: .round))
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 1.0), value: fastingManager.progress)
            
            VStack(spacing: 30) {
                if fastingManager.fastingState == .notStarted {
                    //                    Upcoming fast
                    VStack (spacing: 5) {
                        Text("Upcoming fast")
                            .opacity(0.7)
                        
                        Text("\(fastingManager.fastingPlan.fastingPeriod.formatted()) Hours")
                            .font(.title).bold()
                    }
                } else {
                    // Elapsed Time
                    VStack (spacing: 5) {
                        Text("Elapsed time (\(fastingManager.progress.formatted(.percent)))")
                            .opacity(0.7)
                        
                        Text(fastingManager.startTime, style: .timer)
                            .font(.title).bold()
                    }
                    .padding(.top)
                    // Remaining Time
                    VStack (spacing: 5) {
                        if !fastingManager.elapsed {
                            Text("Remaining time (\((1 - fastingManager.progress).formatted(.percent)))")
                                .opacity(0.7)
                        } else {
                            Text("Extra time")
                                .opacity(0.7)
                        }
                        
                        Text(fastingManager.endTime, style: .timer)
                            .font(.title2).bold()
                    }
                }
                
            }
        }
        .frame(width: 250, height: 250)
        .padding()
//        .onAppear {
//            fastingManager.progress = 1
//        }
        .onReceive(timer) { _ in
            fastingManager.track()
        }
    }
}

struct ProgressRing_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRing()
            .environmentObject(FastingManager())
    }
}
