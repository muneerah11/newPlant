//
//  list.swift
//  newPlant
//
//  Created by muneerah aldhasi on 25/04/1446 AH.
//

import SwiftUI

struct list: View {
    @State private var showSheet2 = false

    var body: some View {
        
        NavigationStack{
            VStack(alignment: .leading, spacing: 16) {
                Text("My Plants 🌱")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading)
                
                Divider()
                
                Text("Today")
                    .font(.title2)
                    .bold()
                    .padding(.leading)
                
                List {
                    
                }
                .listStyle(InsetGroupedListStyle())
                
                Spacer()
                
                
                HStack {
                    Spacer()
                    Button(action: {
                        showSheet2.toggle()
                        // Action for adding a new reminder
                    }) {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 24))
                            Text("New Reminder")
                                .font(.headline)
                        }
                        .foregroundColor(Color("g1"))
                        .padding(.trailing, 200.0)
                    }
                    .sheet(isPresented: $showSheet2) {
                        sheet2()// عرض الورقة عند تغيير حالة المتغير
                        
                    }
                    
                    Spacer()
                }
                
                
                
                
                
            }
            .navigationTitle("")
            
        }
    }
    
}
#Preview {
    list()
}
