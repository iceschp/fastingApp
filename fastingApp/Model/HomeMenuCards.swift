//
//  HomeMenuCards.swift
//  fastingApp
//
//  Created by Warunya on 30/4/2565 BE.
//

import Foundation
import SwiftUI

enum HomeMenuCards: CaseIterable {
    case thaifood
    case savedMenus
    
    var name: String {
        switch self {
        case .thaifood: return "Diet Meal"
        case .savedMenus: return "Saved Menus"
        }
    }
    
    var subMenu: String {
        switch self {
        case .thaifood: return "เมนูอาหารไทย"
        case .savedMenus: return "เมนูที่ถูกบันทึกไว้"
        }
    }
    
    var icon: String {
        switch self {
        case .thaifood: return "🥑"
        case .savedMenus: return "❤️"
        }
    }
    
    var caption: String {
        switch self {
        case .thaifood: return "รวบรวมมากกว่า 200 เมนู"
        case .savedMenus: return "เมนูอาหารไทยที่บันทึกไว้"
        }
    }
    
    var bgColor: UIColor {
        switch self {
        case .thaifood: return UIColor(red: 0.937, green: 0.89, blue: 0.298, alpha: 1)
        case .savedMenus: return UIColor(red: 0.945, green: 0.659, blue: 0.745, alpha: 1)
        }
    }
    
}
