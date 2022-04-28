//
//  TagView.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 20/4/2565 BE.
//

import SwiftUI
// Custom View...
struct TagView: View {
    var maxLimit: Int
    @Binding var tags: [Tag]
    var title: String = "คุณทานอาหารประเภทไหน"
    var fontSize: CGFloat = 16
    //Adding Geometry Effect to Tag...
    @Namespace var animation
   
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
             Text(title)
                .font(.callout)
                .foregroundColor(Color("Color1"))
            
            // ScrollView...
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 10){
             //Displaying Tags.....
                    ForEach(getRows(),id: \.self){rows in
                        HStack(spacing:6) {
                            ForEach(rows){ row in
                                // Row View...
                                RowView(tag: row)
                            }
                        }
                    }
            }
                .frame(width: UIScreen.main.bounds.width  - 80,alignment: .leading)
                .padding(.vertical)
                .padding(.bottom,30)
        }
            .frame(maxWidth: .infinity)
            .background(
                
                RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(Color("Color1").opacity(0.2),lineWidth: 1)
            )
            // Animation..
            .animation(.easeInOut, value: tags)
            .overlay(
                // Limit...
                Text("\(getSize(tags:tags))/\(maxLimit)")
                    .font(.system(size: 13,weight: .semibold))
                    .foregroundColor(Color("Tag"))
                    .padding(12),
                alignment: .bottomTrailing
            )
      }
        //Since onChang will prefrom little late...
//        .onChange(of: tags) { newValue in
//
//        }
        
  }
    @ViewBuilder
    func RowView(tag: Tag)->some View {
        Text(tag.text)
        // applying same font size..
        //else size will vary..
            .font(.system(size: fontSize))
        // adding capsule..
            .padding(.horizontal,14)
            .padding(.vertical,8)
            .background(
                Capsule()
                    .fill(Color("Color3"))
            )
            .foregroundColor(Color("Color4"))
            .lineLimit(1)
        //Delete...
            .contentShape(Capsule())
            .contextMenu{
                Button("Delete") {
                    // deleting..
                    tags.remove(at: getIndex(teg: tag))
                }
            }
            .matchedGeometryEffect(id: tag.id, in: animation)
    }
    
    func getIndex(teg: Tag)->Int{
        
        let index = tags.firstIndex { currentTag in
            return teg.id == currentTag.id
        } ?? 0
        
        return index
    }
    // Basic Logic...
    // Splitting the array when it exceeds the screen size...
    func getRows()->[[Tag]]{
        var rows: [[Tag]] = []
        var currentRow: [Tag] = []
        // caluclating text width..
        var totalWidth: CGFloat = 0
        // For safety extra10...
        let screenWidth: CGFloat = UIScreen.main.bounds.width - 90
        
        //caluclating text width...
        
        tags.forEach{ tag in
            // updating total width..
            
            //adding the capsule size into total width spacing
            // 14 + 14 + 6 + 6
            // extra 6 for safety
            totalWidth += (tag.size + 40)
            //checking if totalwidth is greater than size...
            if totalWidth > screenWidth {
                //adding row in row...
                //clearing the data...
                //checking for long string...
                totalWidth = (!currentRow.isEmpty || rows.isEmpty  ? (tag.size + 40) : 0)
                rows.append(currentRow)
                currentRow.removeAll()
                currentRow.append(tag)
            }else {
                currentRow.append(tag)
            }
        }
        // Safe check...
        // if having any value storing it in rows...
        if !currentRow.isEmpty{
            rows.append(currentRow)
            currentRow.removeAll()
        }
        return rows
    }
}

 

//Global Function..
func addTag(tags:[Tag],text: String,fontSize: CGFloat,maxLimit:Int,completion: @escaping (Bool,Tag)->()){
    guard let last = tags.last else {
        return
    }
    // getting Text Size...
    //let font = UIFont.systemFont(ofSize: fontSize)
    let font = UIFont.systemFont(ofSize: fontSize)
    
    let attributes = [NSAttributedString.Key.font: font]
    
    let size = (text as NSString).size(withAttributes: attributes)
    print(size)
    //Updating Size...
    //tags[getIndex(tag: last)].size; size.width
    let tag = Tag(text: text,size: size.width)
    if(getSize(tags: tags) + text.count) < maxLimit {
        completion(false,tag)
    }else{
        completion(true,tag)
    }
}
func getSize(tags: [Tag])->Int {
    var count: Int = 0
    
    tags.forEach {tag in
        count += tag.text.count
    }
    return count
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
 }

