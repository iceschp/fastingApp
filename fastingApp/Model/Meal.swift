//
//  Meal.swift
//  fastingApp
//
//  Created by Warunya on 13/4/2565 BE.
//

import Foundation
import SwiftUI

struct Meal: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var category: String
    var calories: String
    var description: String
    var special: String
    var carbohydrate: String
    var protein1, protein2: String
    
    var ingredient1, ingredient2, ingredient3, ingredient4: String
    var ingredient5, ingredient6, ingredient7: String
    
    var measure1, measure2, measure3, measure4: String
    var measure5, measure6, measure7: String
    
    var instruction1, instruction2, instruction3, instruction4, instruction5: String
    var instruction6, instruction7, instruction8, instruction9, instruction10: String
}

