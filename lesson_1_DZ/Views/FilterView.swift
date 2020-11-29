//
//  FilterView.swift
//  lesson_1_DZ
//
//  Created by super_comp on 29.11.2020.
//

import SwiftUI

struct FilterView: View {
    
    @Binding var suvShowed: Bool
    @EnvironmentObject var viewModel: CarsListViewModel
    
    var body: some View {
        Toggle(isOn: $suvShowed, label: {
            Text(viewModel.toggleName)
        })
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView(suvShowed: .constant(true)).environmentObject(CarsListViewModel())
    }
}
