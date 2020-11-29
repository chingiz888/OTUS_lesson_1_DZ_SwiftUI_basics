//
//  CarsListViewModel.swift
//  lesson_1_DZ
//
//  Created by super_comp on 29.11.2020.
//

import Foundation

final class CarsListViewModel: ObservableObject {
    
    @Published private(set) var toggleName = "Show Only SUV"
    
    @Published private(set) var cars: [Car] = [
        Car(name: "BMW 320i", isSUV: false),
        Car(name: "Hyundai i40", isSUV: false),
        Car(name: "Jeep Grand Cherokee", isSUV: true),
        Car(name: "Mercedes E200", isSUV: false)
  
    ]
}
