//
//  MenusPlanView.swift
//  fastingApp
//
//  Created by Warunya on 24/3/2565 BE.
//

import SwiftUI

struct MenusPlanView: View {
    var body: some View {
        PlanHeader()
    }
}

struct PlanHeader: View {
    
    @State var txt = ""
    
    var body: some View {
        VStack {
            VStack {
                Text("วันนี้ทานอะไรดีคะ?")
                    .font(.system(size: 20).bold())
                    .foregroundColor(Color.pink)
            }
            .padding(.top, 50)
            .padding(.bottom, 30)
            
            HStack(spacing: 15) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("ค้นหาเมนูอาหาร . . .", text: $txt)
            }
            .padding(.vertical, 12)
            .padding(.horizontal)
            .background(Color.white)
            .clipShape(Capsule())
            
            Spacer(minLength: 0)
        }
        .padding()
        .background(Color.green).edgesIgnoringSafeArea(.all)
    }
}

struct MenusPlanView_Previews: PreviewProvider {
    static var previews: some View {
        MenusPlanView()
    }
}
