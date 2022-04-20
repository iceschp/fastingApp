//
//  Item.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 20/4/2565 BE.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID().uuidString
    let backgroundColor: Color
    let image: String
    let title: String
    let subtitle: String
}

let data = [
    Item(backgroundColor: Color("Color2"), image: "image1", title: "Meow ICE", subtitle:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy " ),
    Item(backgroundColor: Color("Color1"), image: "image2", title: "Meow MILK", subtitle:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy " ),
    Item(backgroundColor: Color("Color4"), image: "image3", title: "Meow ICE MILK", subtitle:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy " ),

]
