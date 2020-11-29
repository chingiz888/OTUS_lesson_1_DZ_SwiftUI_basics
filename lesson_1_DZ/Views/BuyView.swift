//
//  BuyView.swift
//  lesson_1_DZ
//
//  Created by super_comp on 29.11.2020.
//

import SwiftUI

struct BuyView: View {
    
    @Binding var tabSelection: Int
    @Binding var listSelection: Int?
    
    var body: some View {
        Button(action: {
            self.tabSelection = 1
            self.listSelection = 2
        }) {
            Text("Buy this car!")
        }
    }
}

struct BuyView_Previews: PreviewProvider {
    static var previews: some View {
        BuyView(tabSelection: .constant(1), listSelection: .constant(2))
    }
}
