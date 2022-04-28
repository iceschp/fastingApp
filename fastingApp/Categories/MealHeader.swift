//
//  Header.swift
//  fastingApp
//
//  Created by Warunya on 28/4/2565 BE.
//

import SwiftUI

struct MealHeader: View {
    @State var txt = ""
    
    var body: some View {
        
        VStack(spacing: 30) {
            Text("วันนี้ทานอะไรดีคะ?")
                .font(.system(size: 25).bold())
                .foregroundColor(Color.init(uiColor: UIColor(red: 0.945, green: 0.659, blue: 0.745, alpha: 1)))
                .padding(.top, 20)
            
            HStack(spacing: 15) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("ค้นหาเมนูอาหาร...", text: $txt)
                    .font(.system(size: 18))
            }
            .padding(.vertical, 12)
            .padding(.horizontal)
            .background(Color.white)
            .clipShape(Capsule())
            .padding(.horizontal, 15)
        }
        .padding(.vertical, 40)
        .background(Color.init(uiColor: UIColor(red: 0.176, green: 0.412, blue: 0.282, alpha: 1)))
        
    }
}

struct MealHeader_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
