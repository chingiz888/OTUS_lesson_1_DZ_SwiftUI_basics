//
//  Car.swift
//  lesson_1_DZ
//
//  Created by Chingiz on 29.11.2020.
//

import Foundation

struct Car: Identifiable {
    let id = UUID()
    let name: String
    let isSUV: Bool
}
