//
//  progressRing.swift
//  fastingApp
//
//  Created by Warunya on 2/4/2565 BE.
//

import SwiftUI

struct ProgressRing: View {
    @State var progress = 0.5
    var body: some View {
        ZStack {
            // Placeholder Ring
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(.gray)
                .opacity(0.1)
            
            // Colored Ring
            Circle()
                .trim(from: 0.0, to: min(progress, 1.0))
                .stroke(Color.init(uiColor: UIColor(red: 0.937, green: 0.89, blue: 0.298, alpha: 1)), style: StrokeStyle(lineWidth: 15.0, lineCap: .round, lineJoin: .round))
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 1.0), value: progress)
            
            VStack(spacing: 30) {
                // Elapsed Time
                VStack (spacing: 5) {
                    Text("Elapsed time")
                        .opacity(0.7)
                    
                    Text("0.00")
                        .font(.title).bold()
                }
                .padding(.top)
                // Remaining Time
                VStack (spacing: 5) {
                    Text("Remaining time")
                        .opacity(0.7)
                    
                    Text("0.00")
                        .font(.title2).bold()
                }
            }
        }
        .frame(width: 250, height: 250)
        .padding()
        .onAppear {
            progress = 1
        }
    }
}

struct ProgressRing_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRing()
    }
}
