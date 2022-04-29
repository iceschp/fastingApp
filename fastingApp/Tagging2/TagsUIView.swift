//
//  TagsUIView.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 29/4/2565 BE.
//

import SwiftUI

struct TagsUIView: View {
    var body: some View {
        NavigationView{
            Home2()
                .navigationTitle("Meal style")
        }
    }
    
}

struct TagsUIView_Previews: PreviewProvider {
    static var previews: some View {
        TagsUIView()
    }
}
struct Home2: View {
    @State var text = ""
    @State var chips : [[ChipsData]] = [
        //Sample Date Fro Testing..
        [ChipsData(chipText: "Hello"),ChipsData(chipText: "World"),ChipsData(chipText: "Guys")]
        
    ]
    var body: some View {
        VStack(spacing:35){
        // Chips View
        VStack(spacing:10){
            // Chips View...
            ForEach(chips.indices ,id: \.self){index in
                HStack{
                   // some times it asks us to specify hashable in Date Model.
                    ForEach(chips[index].indices, id: \.self){chipIndex in
                        
                        Text(chips[index][chipIndex].chipText)
                            .fontWeight(.semibold)
                            .padding(.vertical,10)
                            .padding(.horizontal)
                            .background(Capsule().stroke(Color.black,lineWidth: 1))
                    }
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width - 30, height:UIScreen.main.bounds.height / 3)
        // Border...
        .background(RoundedRectangle(cornerRadius: 15).stroke(Color.gray.opacity(0.5),lineWidth: 1.5))
        // TextEditor...
            TextEditor(text: $text)
                .padding()
        //Border With Fixed Size...
            .frame(height: 150)
            .background(RoundedRectangle(cornerRadius: 15).stroke(Color.gray.opacity(0.5),lineWidth: 1.5))
            // Add Button...
            Button(action: {
                //Adding Chip To Last Array....
                chips[chips.count - 1].append(ChipsData(chipText: text))
                //Clearing Old Text In Editor
                text = ""
            }, label: {
                Text("เพิ่มประเภท")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.vertical,10)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .cornerRadius(4)
            })
            // Disabling Button When Text is Empty..
                .disabled(text == "")
                .opacity(text == "" ? 0.45 : 1 )
            
    }
        padding()
 }
}
// Chips Data Model...
struct ChipsData: Identifiable{
    var id = UUID().uuidString
    var chipText : String
}
