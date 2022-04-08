//
//  CategoryRow.swift
//  fastingApp
//
//  Created by Warunya on 25/3/2565 BE.
//

import SwiftUI

struct CategoryRow: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .top, spacing: 0) {
                    CategoryItem()
                }
            }
            
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow()
    }
}

   
