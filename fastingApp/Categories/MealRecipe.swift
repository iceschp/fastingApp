//
//  MealRecipe.swift
//  fastingApp
//
//  Created by Warunya on 15/4/2565 BE.
//

import SwiftUI

struct MealRecipe: View {
    var meal: Meal
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            VStack {
                
                VStack (spacing: 30) {
                    VStack (spacing: 20) {
                        Text(meal.name)
                            .font(.system(size: 20)).bold()
                            .padding(.top, 10)
                        
                        Text(meal.special)
                            .font(.system(size: 12))
                            .padding(8)
                            .background(Color.init(uiColor: UIColor(red: 0.937, green: 0.89, blue: 0.298, alpha: 1)))
                    }
                    
                    HStack (alignment: .top, spacing: 30) {
                        Image("food-1")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .cornerRadius(20)
                        
                        VStack (alignment: .leading, spacing: 10) {
                            Text("ปริมาณแคลอรี่ต่อจาน (kcal)")
                                .font(.system(size: 12))
                                .foregroundColor(Color.init(uiColor: UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)))
                            
                            Text("🥑 \(meal.calories) กิโลแคลอรี่")
                                .font(.system(size: 18))
                                .padding(.bottom, 20)
                            
                            HStack (alignment: .top, spacing: 30) {
                                VStack (alignment: .leading, spacing: 10) {
                                    Text("โปรตีน")
                                        .font(.system(size: 14)).bold()
                                    Text("กุ้ง")
                                        .font(.system(size: 14))
                                    Text("อกไก่")
                                        .font(.system(size: 14))
                                }
                                
                                VStack (alignment: .leading, spacing: 10) {
                                    Text("คาร์โบไฮเดรต")
                                        .font(.system(size: 14)).bold()
                                    Text(meal.carbohydrate)
                                        .font(.system(size: 14))
                                }
                                
                            }
                        }
                    }
                }
                .padding(.bottom, 30)
                
                Spacer(minLength: 0)
                
                VStack (spacing: 10) {
                    HStack {
                        VStack (alignment: .leading, spacing: 10) {
                            Text("วัตถุดิบและส่วนผสม")
                                .font(.system(size: 16)).bold()
                                .foregroundColor(Color.init(uiColor: UIColor(red: 0.922, green: 0.38, blue: 0.239, alpha: 1)))
                        }
                        
                        Spacer()
                        
                        VStack (alignment: .trailing, spacing: 10) {
                            Text("จำนวน")
                                .font(.system(size: 12))
                                .foregroundColor(Color.init(uiColor: UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)))
                        }
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        VStack (alignment: .leading, spacing: 10) {
                            Group {
                                Text(meal.ingredient1)
                                Text(meal.ingredient2)
                                Text(meal.ingredient3)
                                Text(meal.ingredient4)
                                Text(meal.ingredient5)
                                Text(meal.ingredient6)
                                Text(meal.ingredient7)
                            }
                            .font(.system(size: 12))
                        }
                        
                        Spacer()
                        
                        VStack (alignment: .trailing, spacing: 10) {
                            Group {
                                Text(meal.measure1)
                                Text(meal.measure2)
                                Text(meal.measure3)
                                Text(meal.measure4)
                                Text(meal.measure5)
                                Text(meal.measure6)
                                Text(meal.measure7)
                            }
                            .font(.system(size: 12))
                        }
                    }
                    .padding(.horizontal)
                    
                    Divider()
                        .frame(width: 100)
                        .background(Color.init(uiColor: UIColor(red: 0.922, green: 0.38, blue: 0.239, alpha: 1)))
                        .padding(.bottom, 20)
                    
                    
                    VStack (alignment: .leading) {
                        VStack (alignment: .leading) {
                            Text("วัตถุดิบและส่วนผสม")
                                .font(.system(size: 16)).bold()
                                .foregroundColor(Color.init(uiColor: UIColor(red: 0.922, green: 0.38, blue: 0.239, alpha: 1)))
                        }
                        .padding(.bottom, 10)
                        
                        VStack (alignment: .leading, spacing: 10) {
                            Group {
                                Text(meal.instruction1)
                                Text(meal.instruction2)
                                Text(meal.instruction3)
                                Text(meal.instruction4)
                                Text(meal.instruction5)
                                Text(meal.instruction6)
                                Text(meal.instruction7)
                                Text(meal.instruction8)
                                Text(meal.instruction9)
                                Text(meal.instruction10)
                            }
                            .font(.system(size: 12))
                        }
                        .frame(maxWidth: 330, maxHeight: .infinity)
                    }
                    
                    
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white).edgesIgnoringSafeArea(.all)
            }
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.init(uiColor: UIColor(red: 0.851, green: 0.953, blue: 0.996, alpha: 1)))
    }
    
}

struct MealRecipe_Previews: PreviewProvider {
    static var previews: some View {
        MealRecipe(meal: meals[0])
    }
}

