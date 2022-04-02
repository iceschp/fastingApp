//
//  chart.swift
//  fastingApp
//
//  Created by Warunya on 30/3/2565 BE.
//

import SwiftUI

struct timeHome: View {
    var body: some View {
        timeHeader()
    }
}

struct timeHeader: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.945, green: 0.659, blue: 0.745, alpha: 1))
                .ignoresSafeArea()
            content()
        }
    }
}

struct content: View {
    var body: some View {
        VStack {
            // Fasting Plan
            Text("16:8")
                .bold()
                .padding(.horizontal, 24)
                .padding(.vertical, 8)
                .background(.thinMaterial)
                .cornerRadius(20)
            
            // Progress ring
            progressRing()
        }
    }
}


struct timeHome_Previews: PreviewProvider {
    static var previews: some View {
        timeHome()
    }
}
