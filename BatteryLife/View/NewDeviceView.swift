//
//  NewDeviceView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/30.
//

import SwiftUI
import UIKit

struct NewDeviceView: View {
    
    @State private var selectedTab = "One"
    var isBatteryMonitoringEnabled: Bool
    var batteryState: UIDevice.BatteryState
    enum UIDevice.BatteryState
   
    
    var body: some View {
        
        
        
        VStack(alignment: .leading){
            //image and name of device
            
            
            Text("My")
                .fontWeight(.heavy)
                .font(.system(size: 80))
            Text("Airpods")
                .fontWeight(.heavy)
                .font(.system(size: 80))
            HStack{
                Image(systemName: "airpods")
                    .font(.system(size: 80))
                
                
                Spacer()
            }
            
            .padding(.trailing)
            
            
            ZStack{
                //battery cricle
                Image(systemName: "circle")
                    .font(.system(size: 280))
                
                //battery percentage
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
        
        
        
        
        
        
        
    }
    private func updateBatteryLevel() {
        // UIDevice's batteryLevel returns a value between 0.0 (empty) and 1.0 (full)
        self.batteryLevel = UIDevice.current.batteryLevel
    }
    
}


#Preview {
    LandingView()
}




