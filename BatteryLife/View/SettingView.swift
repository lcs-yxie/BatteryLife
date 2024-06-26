//
//  SettingView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/6/4.
//

//Supa base passcode: 5F1zDK7miFRsp8Gp
import SwiftUI
import Foundation

struct SettingView: View {
    
    @State private var batteryNotice = false
    @State private var batteryLevel = 10

    var body: some View {
        
        //Textfield for setting
        NavigationView{
            Form{
                
                Section(header: Text("Notification")){
                    Toggle("Low Battery Notification", isOn: $batteryNotice)
                    Stepper("Batter Percentage", value: $batteryLevel, in: 5...90)
                    Text("Notify when battery is \(batteryLevel) or lower")
                }
                
            }
            
        }
        .navigationTitle("Device")
        .onTapGesture {
            hideKeyboard()
        }
        
        
        
    }
    
}

        

#Preview {
    SettingView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

#if canImport(UIKit)
extension View {
func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                    }
}
#endif
