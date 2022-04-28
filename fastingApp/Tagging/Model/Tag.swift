//
//  Tag.swift
//  fastingApp
//
//  Created by Milk Jiraporn on 20/4/2565 BE.
//

import SwiftUI
// Tag Model

struct Tag: Identifiable,Hashable {
    var id  = UUID().uuidString
    var text: String
    var size: CGFloat = 0
}

