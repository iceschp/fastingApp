//
//  Home.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 20/4/2565 BE.
//

import SwiftUI
import SafariServices

struct Home: View {
    @State var text: String = ""
    //Tags
    @State var tags:[Tag] = []
    @State var showAlert: Bool = false
    var body: some View {
        VStack {
            Text("Meal Style")
                .font(.system(size: 35, weight: .bold))
                .foregroundColor(Color("Color1"))
                .frame(maxWidth: .infinity,alignment: .leading )
            // Custom Tag View...
            TagView(maxLimit: 150, tags: $tags)
            //Default Height...
                .frame(height: 280)
                .padding(.top,20)
                        // TextField...
            TextField("เพิ่มประเภท", text: $text)
                .font(.title3)
                .padding(.vertical,12)
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color("Color1").opacity(0.3),lineWidth: 1)
                )
            //Setting only Textfiel as Dark
                .environment(\.colorScheme, .dark)
                .padding(.vertical,20)
            // Add Button.. {
            Button {
                addTag(tags: tags, text: text, fontSize: 16, maxLimit: 150){
                    alert, tag in
                    if alert{
                        //Showing alert..
                        
                        showAlert.toggle()
                    }
                    else{
                        // adding Tag..
                        tags.append(tag)
                        text = ""
                        
                    }
                    
                }
            }label: {
                Text("เพิ่มประเภท")
                    .fontWeight(.semibold)
                    .foregroundColor(Color("Color1"))
                    .padding(.vertical,12)
                    .padding(.horizontal,45)
                    .background(Color("Color1"))
                    .cornerRadius(10)
            }
            //Disabling Button...
            .disabled(text == "")
            .opacity(text == "" ? 0.6 : 1)
            .padding(20)
            VStack{
               NavigationLink(destination: Select_plan  ()){
                Button(action: {}, label: {
                    Text("ตกลง")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Capsule().fill(Color.orange))
                        .frame(width: 300)
                })
                }
            }
        }
        .padding(15)
        .frame(maxWidth: .infinity , maxHeight: .infinity,alignment: .top)
        .background(
            Color("Color4")
                .ignoresSafeArea()
        )
        .alert(isPresented : $showAlert) {
            Alert(title: Text("Error"), message: Text("Tag Limit Exceeded delete some tags !!!"),dismissButton: .destructive(Text("Ok")))
        }
    }
 }

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
