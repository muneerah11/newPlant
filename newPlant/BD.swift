//
//  BD.swift
//  newPlant
//
//  Created by muneerah aldhasi on 25/04/1446 AH.
//

import SwiftUI
struct DB : Identifiable {
    var id: UUID = UUID()
    var name: String
    var room: String
    var sunlight: String
    var wateringDays: String
    var waterAmount: String
    var iswatered : Bool = false
    
    init(id: UUID = UUID(), name: String, room: String, sunlight: String, wateringDays: String, waterAmount: String , isWatered: Bool) {
        
        self.id = id
        self.name = name
        self.room = room
        self.sunlight = sunlight
        self.wateringDays = wateringDays
        self.waterAmount = waterAmount
        self.iswatered = isWatered
        
        
    }
    
    

    
    
    
}


