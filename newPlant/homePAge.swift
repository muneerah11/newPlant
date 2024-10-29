//
//  homePAge.swift
//  newPlant
//
//  Created by muneerah aldhasi on 25/04/1446 AH.
//

import SwiftUI

struct homePAge: View {
    @State private var showSheet = false
    var body: some View {
        NavigationStack{
           
            Divider()
            VStack {
                
                Image("plant") // استبدل "plant" باسم الصورة الخاصة بك
                    .resizable()
                    .frame(width: 154.0, height: 200.0)
                    .position(x: 200, y: 236)
                    .opacity(1.0)
                    .offset(y: -80)
                VStack{
                    Text("start your plant journey!")
                        .font(.title)
                        .fontWeight(.bold)
                        .offset(y: -40)
                        .padding(.top, 25)
                        .padding(.bottom, 1)
                }
                VStack{
                    Text("Now all your plants will be in one place and we will help you take care of them :)🪴")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                        .position(    x: 175, y: -10)
                        .padding(.horizontal, 15.0)
                    VStack{
                        Button(action: {
                            showSheet = true
                            
                        }) {
                            
                            Text("Set Plant Reminder") // نص الزر
                                .font(.headline) // حجم الخط
                                .foregroundColor(.black) // لون النص
                                .padding(.vertical, 13.0)
                                .padding(.horizontal, 73.0)//إضافة مساحة داخلية
                                .background(Color("g1")) // لون خلفية الزر
                                .cornerRadius(10)
                            // زوايا دائرية
                        }
                        
                        Spacer()
                        
                            .sheet(isPresented:$showSheet) {
                                sheet1()
                                // عرض الورقة عند تغيير حالة المتغير
                                
                            }    }            }
                .padding()
                VStack
                {
                  
                }
            }
            .navigationTitle("My Plants🌱")
        }
    }
}
#Preview {
    homePAge()
}
