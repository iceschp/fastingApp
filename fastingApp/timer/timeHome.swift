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
        VStack (alignment: .leading) {
            VStack {
                Text("Intermitent Fasting")
                    .font(.system(size: 25).bold())
                    .foregroundColor(.black)
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                
                HStack(spacing: 15) {
                    Text("text")
                }
                .padding(.horizontal)
            }
            .padding(.bottom, 50)
            .background(Color.init(uiColor: UIColor(red: 0.945, green: 0.659, blue: 0.745, alpha: 1)))
            
            Spacer(minLength: 0)
            
        }
    }
}

struct timeHome_Previews: PreviewProvider {
    static var previews: some View {
        timeHome()
    }
}
