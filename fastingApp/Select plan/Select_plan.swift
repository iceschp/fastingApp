//
//  Select_plan.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 27/4/2565 BE.
//

import SwiftUI
struct Photo: Identifiable {
    var id = UUID()
    var name: String
}
//let listphoto = {Photo(name:"Photo1","Photo2")}
struct Select_plan: View {
    let spacing: CGFloat = 0
    @State private var numberofRows = 3
    var body: some View {
        let columns = Array(
            repeating: GridItem(.flexible(), spacing: spacing), count: numberofRows)
        
        ScrollView{
            LazyVGrid(columns: columns, alignment: .center ,spacing :spacing){
                VStack{
                    VStack{
                        Image("photo1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                        
                        Text("Lorem : Ipsum has been the industry's : standard dummy text ever since the 1500s,when an unknown printer took a galley of type and scrambled it to make a type specimen book. ")
                            .frame(width: 250, height: 150)
                            .foregroundColor(.white)
                        //NavigationLink Home
                        NavigationLink(destination: LoginView()){
                            Text("FREE PLAN")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(Capsule().fill(Color.green))
                                .frame(width: 200)
                                .padding(.vertical,-10)
                                .padding(.bottom)
                        }
                        .padding(20)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 15)
                    )
                    .padding(.bottom,30)
                    VStack {
                        Image("photo2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                            .padding(0)
                        Text("Lorem : Ipsum has been the industry's : standard dummy text ever since the 1500s,when an unknown printer took a galley of type and scrambled it to make a type specimen book. ")
                            .frame(width: 250, height: 150)
                            .foregroundColor(.white)
                        //NavigationLink Home page
                        NavigationLink(destination: LoginView()){
                            Text("PERMIUM PLAN")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(Capsule().fill(Color.green))
                                .frame(width: 200)
                                .padding(.vertical,-10)
                                .padding(.bottom)
                        }
                        .padding(20)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 15)
                    )}
                .padding(10)
            }// End ScrollView
            .padding(20)
            .padding(.horizontal,350)
        }// End ScrollView
        .navigationTitle("Select Plan")
        .background(Color.orange)
        // End Navigation
    }//End body
}

struct Select_plan_Previews: PreviewProvider {
    static var previews: some View {
        Select_plan()
    }
}
