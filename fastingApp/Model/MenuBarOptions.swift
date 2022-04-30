//
//  MenuBarOptions.swift
//  fastingApp
//
//  Created by Warunya on 27/4/2565 BE.
//

import Foundation
import SwiftUI

enum MenuBarOptions: CaseIterable {
    case boiled
    case fried
    case stirFried
    case basic
    
    var title: String {
        switch self {
        case .boiled: return "เมนูต้ม"
        case .fried: return "เมนูทอด"
        case .stirFried: return "เมนูผัด"
        case .basic: return "เมนูอื่นๆ"
            }
    }
    
    var icon: String {
        switch self {
        case .boiled: return "🥘"
        case .fried: return "🍤"
        case .stirFried: return "🍲"
        case .basic: return "🥗"
        }
    }
    
    var bgColor: UIColor {
        switch self {
        case .boiled: return UIColor(red: 0.937, green: 0.89, blue: 0.298, alpha: 1)
        case .fried: return UIColor(red: 0.945, green: 0.659, blue: 0.745, alpha: 1)
        case .stirFried: return UIColor(red: 0.922, green: 0.38, blue: 0.239, alpha: 1)
        case .basic: return UIColor(red: 0.176, green: 0.412, blue: 0.282, alpha: 1)
        }
    }
    
}
