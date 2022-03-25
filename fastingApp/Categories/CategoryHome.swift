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
                    .font(.system(size: 25).bold())
                    .foregroundColor(Color.init(uiColor: UIColor(red: 0.945, green: 0.659, blue: 0.745, alpha: 1)))
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                
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
            .padding(.bottom, 50)
            .background(Color.init(uiColor: UIColor(red: 0.176, green: 0.412, blue: 0.282, alpha: 1)))
            
            Spacer(minLength: 0)
            
            //            VStack(alignment: .leading) {
            //                Text("ประเภทอาหาร")
            //                    .font(.system(size: 16))
            //                Spacer(minLength: 0)
            //            }
            //            .padding()
            
            VStack {
                ZStack {
                    HStack (spacing: 0) {
                        Image("picture-2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("สุขภาพที่ดีเริ่มได้ที่ตัวเรา")
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                            .padding(20)
                    }
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.black, lineWidth: 1)
            )
            .background(Color.init(uiColor: UIColor(red: 0.851, green: 0.953, blue: 0.996, alpha: 1)))
            .cornerRadius(30)
            .padding()
            
            VStack {
                Text("เมนูที่น่าสนใจ 🔥")
                    .font(.system(size: 16)).bold()
                    .padding(.leading, 10)
                Spacer(minLength: 0)
            }
            
        }
    }
}

struct MenusPlanView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
