//
//  MenusPlanView.swift
//  fastingApp
//
//  Created by Warunya on 24/3/2565 BE.
//

import SwiftUI

struct MenusPlanView: View {
    var body: some View {
        PlanHeader()
    }
}

struct PlanHeader: View {
    var body: some View {
        VStack {
            Text("วันนี้ทานอะไรดีคะ?")
                .font(.system(size: 20).bold())
                .foregroundColor(Color.pink)
            
        }
    }
}

struct MenusPlanView_Previews: PreviewProvider {
    static var previews: some View {
        MenusPlanView()
    }
}
