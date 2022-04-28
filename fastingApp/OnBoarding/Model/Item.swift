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
    Item(backgroundColor: Color("Color2"), image: "image1", title: "กินนำกันเด้อ", subtitle:"เป็นแอปพลิเคชันที่เกี่ยวการทำ Intermittent Fasting หรือ IF ช่วยยกระดับการเผาผลาญไขมันให้กับร่างกาย ดังนั้นน้ำหนักจากการสะสมของไขมันจึงลดตามไปด้วย โดยหลักการเผาผลาญคือ เมื่อเราอยู่ในช่วงอดอาหาร ระดับอินซูลินจะลดลง ระดับ Growth Hormone สูงขึ้น" ),
    Item(backgroundColor: Color("Color1"), image: "image2", title: "อาหารไทยรักสุขภาพ", subtitle:"มีอาหารไทยรักสุขภาพมากมายให้เลือก ในการลดน้ำหนักและการทำIntermittent Fasting ควบคู่กันทำให้รับประทานที่อร่อยและสุขภาพดี" ),
    Item(backgroundColor: Color("Color4"), image: "image3", title: "ประสบการณ์การลดน้ำหนักที่ดี", subtitle:"ได้รับประสบการณ์การลดน้ำหนักแบบใหม่ ในรูปแบบที่ยังรับประทานที่แปลกใหม่และอร่อย" ),

]
