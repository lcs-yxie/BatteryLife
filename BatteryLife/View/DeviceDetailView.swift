//
//  NewDeviceView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/30.
//

//Supa base passcode: 5F1zDK7miFRsp8Gp
import SwiftUI
import UIKit

struct DeviceDetailView: View {
    
    @State private var batteryLevel: Float = UIDevice.current.batteryLevel
    
    let device: Device
//    @Binding var name: String
    
    var body: some View {
        
        VStack(alignment: .leading){
            // Image and name of the device
            Text("\(device.name)")
                .fontWeight(.heavy)
                .font(.system(size: 80))
            HStack{
                Image(systemName: "airpods")
                    .font(.system(size: 80))
                
                Spacer()
            }
            .padding(.trailing)
            
            ZStack {
                // Battery circle
                Image(systemName: "circle")
                    .font(.system(size: 280))
                
                // Battery percentage
                Text("\(Int(batteryLevel * 100))%")
                    .fontWeight(.heavy)
                    .font(.system(size: 70))
            }
            .foregroundStyle(.green)
            .padding(.leading)
            
            Spacer()
        }
        .padding(.top)
        .padding(.leading)
        .font(.system(size: 40))
        .onAppear {
            UIDevice.current.isBatteryMonitoringEnabled = true
            updateBatteryLevel()
        }
        .onDisappear {
            UIDevice.current.isBatteryMonitoringEnabled = false
        }
    }
    
    private func updateBatteryLevel() {
        // UIDevice's batteryLevel returns a value between 0.0 (empty) and 1.0 (full)
        self.batteryLevel = UIDevice.current.batteryLevel
    }
}

