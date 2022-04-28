//
//  CategoryBanner.swift
//  fastingApp
//
//  Created by Warunya on 28/4/2565 BE.
//

import SwiftUI

struct Banner: View {
    var body: some View {
        
        HStack {
            Image("picture-2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .offset(x: -20, y: -5)
            
            Text("สุขภาพที่ดี\nเริ่มได้ที่ตัวเรา")
                .font(.system(size: 26))
                .foregroundColor(.black)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 120, maxHeight: 120)
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.black, lineWidth: 1)
        )
        .background(Color.init(uiColor: UIColor(red: 0.851, green: 0.953, blue: 0.996, alpha: 1)))
        .cornerRadius(30)
        .padding()
        
    }
}

struct Banner_Previews: PreviewProvider {
    static var previews: some View {
        Banner()
    }
}
