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
    //    var protein: [String]
    
    var ingredient1: String
    var ingredient2: String
    var ingredient3: String
    var ingredient4: String
    var ingredient5: String
    var ingredient6: String
    var ingredient7: String
    
    var measure1: String
    var measure2: String
    var measure3: String
    var measure4: String
    var measure5: String
    var measure6: String
    var measure7: String
    
    var instruction1: String
    var instruction2: String
    var instruction3: String
    var instruction4: String
    var instruction5: String
    var instruction6: String
    var instruction7: String
    var instruction8: String
    var instruction9: String
    var instruction10: String
}


