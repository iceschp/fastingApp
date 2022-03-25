//
//  MenusPlanView.swift
//  fastingApp
//
//  Created by Warunya on 24/3/2565 BE.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        PlanHeader()
    }
}

struct PlanHeader: View {
    
    @State var txt = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Text("วันนี้ทานอะไรดีคะ?")
                    .font(.system(size: 20).bold())
                    .foregroundColor(Color.pink)
                    .padding(.top, 20)
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
                .padding(.horizontal, 15)
            }
            .padding(.bottom, 50)
            .background(Color.green)
            
            Spacer(minLength: 0)
            
            VStack(alignment: .leading) {
                Text("ประเภทอาหาร")
                    .font(.system(size: 16))
                Spacer()
            }
            .padding()
            
        }
    }
}

struct MenusPlanView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
