//
//  CarsListView.swift
//  lesson_1_DZ
//
//  Created by super_comp on 29.11.2020.
//

import SwiftUI

struct CarsListView: View {
    
    @EnvironmentObject var viewModel: CarsListViewModel
    @State var suvShowed = false
    @Binding var listSelection : Int?
    
    var body: some View {
        
        NavigationView {
            
            //FIXME: вот реализовал переход на таб и внутри него еще по NavigationLink таким
            // может не очень хорошим способом
            if self.listSelection != nil {
                NavigationLink(destination: CarView(carName: .constant("Jeep Grand Cherokee")), tag: 2, selection: self.$listSelection) {
                    Text("")
                }.navigationBarTitle( "Cars!" )
            } else {
                List {
                    FilterView(suvShowed: $suvShowed).environmentObject(viewModel)
                    
                    ForEach(viewModel.cars) { car in
                        if self.suvShowed == false || car.isSUV {
                            NavigationLink(destination: CarView(carName: .constant(car.name)) ) {
                                Text(car.name)
                            }
                        }
                    }
                   
                }// List
                .navigationBarTitle( "Cars!" )
                
                
            }
            
        }// NavigationView

    }
}

struct CarsListView_Previews: PreviewProvider {
    static var previews: some View {
        CarsListView(listSelection: .constant(nil))
    }
}
