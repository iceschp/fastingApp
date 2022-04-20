//
//  MealRow.swift
//  fastingApp
//
//  Created by Warunya on 13/4/2565 BE.
//

import SwiftUI

struct MealRow: View {
    var meal: Meal
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(meal.name)
                    .font(.system(size: 16)).bold()
                
                ZStack {
                    Text(meal.special)
                        .font(.system(size: 10)).bold()
                }
                .padding(5)
                .background(Color.init(uiColor: UIColor(red: 0.937, green: 0.89, blue: 0.298, alpha: 1)))
                
                Text(meal.description)
                    .font(.system(size: 12))
                
                ZStack {
                    Text("\(meal.calories) กิโลแคลอรี่")
                        .font(.system(size: 10))
                        .foregroundColor(Color.init(uiColor: UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)))
                }
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 2)
                        .stroke(Color.init(uiColor: UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)), lineWidth: 1)
                )
                
            }
            .padding(.leading, 10)
            
            Spacer()
        }
        .frame(minWidth: 350, maxWidth: 350, minHeight: 120, maxHeight: 120)
        .padding(.vertical, 10)
    }
}

struct MealRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MealRow(meal: meals[0])
            MealRow(meal: meals[1])
        }
        .previewLayout(.fixed(width: 350, height: 120))
    }
}
