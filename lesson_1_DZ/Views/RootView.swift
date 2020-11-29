//
//  RootView.swift
//  lesson_1_DZ
//
//  Created by Chingiz on 29.11.2020.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject var carsListViewModel: CarsListViewModel
    @State private var tabSelection = 0
    @State private var listSelection: Int? = nil
    
    var body: some View {

    TabView(selection: $tabSelection) {
        
        BuyView(tabSelection: $tabSelection, listSelection: $listSelection)
            .tag(0)
            .tabItem {
                VStack {
                    Image(systemName: "externaldrive.fill.badge.person.crop")
                    Text("Main")
                }
            }
     
        CarsListView(listSelection: self.$listSelection).environmentObject(carsListViewModel)
            .tag(1)
            .tabItem {
                VStack {
                    Image(systemName: "car.fill")
                    Text("Cars")
                }
            }
        
        AboutView()
            .tag(2)
            .tabItem {
                VStack {
                    Image(systemName: "info.circle.fill")
                    Text("About")
                }
            }
            
    }// TabView
        
        
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView().environmentObject(CarsListViewModel())
    }
}
