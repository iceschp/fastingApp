//
//  MenusPlanView.swift
//  fastingApp
//
//  Created by Warunya on 24/3/2565 BE.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        CategoryBody()
    }
}

struct CategoryBody: View {
    @State var txt = ""
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            VStack(alignment: .leading) {
                
                VStack(spacing: 30) {
                    Text("วันนี้ทานอะไรดีคะ?")
                        .font(.system(size: 25).bold())
                        .foregroundColor(Color.init(uiColor: UIColor(red: 0.945, green: 0.659, blue: 0.745, alpha: 1)))
                        .padding(.top, 10)
                    
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
                .padding(.bottom, 40)
                
                Spacer(minLength: 0)
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    VStack(alignment: .leading) {
                        Text("ประเภทอาหาร")
                            .font(.system(size: 20)).bold()
                        CategoryRow()
                    }
                    .padding()
                    
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
                    .padding(.horizontal, 16)
                    
                    RecommendMealList()
                    
                }
                .background(.white).edgesIgnoringSafeArea(.all)
                
            }
        })
        .background(Color.init(uiColor: UIColor(red: 0.176, green: 0.412, blue: 0.282, alpha: 1)))
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
