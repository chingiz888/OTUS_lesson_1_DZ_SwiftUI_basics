//
//  CarView.swift
//  lesson_1_DZ
//
//  Created by super_comp on 29.11.2020.
//

import SwiftUI

struct CarView: View {
    
    @Binding var carName: String
    
    var body: some View {
        
        VStack {
            Image(systemName: "car.fill").foregroundColor(.blue).font(.largeTitle)
            Text( $carName.wrappedValue ).padding()
        }
 
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView(carName: .constant("600"))
    }
}
