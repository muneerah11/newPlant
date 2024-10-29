//
//  sheet1.swift
//  newPlant
//
//  Created by muneerah aldhasi on 25/04/1446 AH.
//

import SwiftUI

struct sheet1: View {
    
    @Environment(\.presentationMode) var presentationMode
      @State private var plantName: String = ""
      @State private var room: String = "Bedroom"
      @State private var light: String = "Full Sun"
      @State private var wateringDays: String = "Every day"
      @State private var water: String = "50-100 ml"
      @State private var isSaved: Bool = false // لاحتواء حالة الحفظ

    var body: some View {
        VStack {
                 HStack {
                     ZStack {
                         Button(action: {
                             presentationMode.wrappedValue.dismiss()
                         }) {
                             Text("Cancel")
                                 .foregroundColor(Color("g1"))
                         }
                     }
                     Spacer()
                     
                     Text("Set Reminder")
                         .font(.title3)
                         .fontWeight(.bold)
                     
                     Spacer()
                     
                     ZStack {
                         Button(action: {
                             // حفظ البيانات وإضافة النبات إلى النموذج
                             let newPlant = DB(name: plantName, room: room, sunlight: light, wateringDays: wateringDays, waterAmount: water, isWatered: false)
                      //       plantModel.plants.append(newPlant) // إضافة النبات إلى قائمة النباتات
                             presentationMode.wrappedValue.dismiss() // إغلاق الشيت
                         }) {
                             Text("Save")
                                 .fontWeight(.bold)
                                 .foregroundColor(Color("g1"))
                         }
                     }
                 }
                 .padding()
                 
                 Form {
                     Section {
                         HStack {
                             Text("Plant Name")
                                 .fontWeight(.bold)
                             TextField("Plant", text: $plantName)
                                 .textFieldStyle(RoundedBorderTextFieldStyle())
                         }
                     }
                     Section{
                         HStack {
                             Image(systemName: "location")
                             Picker(selection: $room, label: Text("Room")) {
                                 Text("Bedroom").tag("Bedroom")
                                 Text("Living Room").tag("Living Room")
                                 Text("Kitchen").tag("Kitchen")
                                 Text("Balcony").tag("Balcony")
                                 Text("Bathroom").tag("Bathroom")
                             }
                         }
                         
                         
                         
                         HStack {
                             Image(systemName: "sun.max")
                             Picker(selection: $light, label: Text("Light")) {
                                 Text("Full Sun").tag("Full Sun")
                                 Text("Partial Sun").tag("Partial Sun")
                                 Text("Low Light").tag("Low Light")
                             }
                         }
                     }
                     Section{
                         
                 
                             HStack {
                                 Image(systemName: "drop")
                                 Picker(selection: $wateringDays, label: Text("Water Days")) {
                                     Text("Every day").tag("Every day")
                                     Text("Every 2 days").tag("Every 2 days")
                                     Text("Every 3 days").tag("Every 3 days")
                                     Text("Once a week").tag("Once a week")
                                     Text("Every 10 days").tag("Every 10 days")
                                     Text("Every 2 weeks").tag("Every 2 weeks")
                                 }
                             }
                         
                         HStack {
                             Image(systemName: "drop")
                             Picker(selection: $water, label: Text("Water Amount")) {
                                 Text("20-50 ml").tag("20-50 ml")
                                 Text("50-100 ml").tag("50-100 ml")
                                 Text("100-200 ml").tag("100-200 ml")
                                 Text("200-300 ml").tag("200-300 ml")
                             
                             }
                         }
                     }
                 }
             }
         }
     }

     // عرض الشيت في المعاينة
     #Preview {
         sheet1(/*plantModel: PlantModel()*/)
     }
