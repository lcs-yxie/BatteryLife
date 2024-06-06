//
//  SettingView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/6/4.
//

import SwiftUI
import Foundation

struct SettingView: View {
    
    @State private var name = ""
    @State private var batteryNotice = false
    @State private var batteryLevel = 10
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Device Information")){
                    TextField("Name", text: $name)
                }
                
                Section(header: Text("Notification")){
                    Toggle("Low Battery Notification", isOn: $batteryNotice)
                    Stepper("Batter Percentage", value: $batteryLevel, in: 5...90)
                    Text("Notify when battery is \(batteryLevel) or lower")
                }
                
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: GalleryView()){
                        Text("Save")
                    }
                }
                
            }
            
        }
        .navigationTitle("Device")
        
        
        
        
    }
    
}

        

#Preview {
    SettingView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
