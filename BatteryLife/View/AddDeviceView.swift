//
//  AddDeviceView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/6/10.
//

import SwiftUI
import Foundation

struct AddDeviceView: View {
    
    @State private var name: String = ""
    @State private var type: String = ""
    @State private var batteryLevel: Float = 0.5
    @Binding var dismissSheet: Bool
    @Binding var device: [Device]
    
    
    
    var body: some View {
        NavigationStack{
            Form{
                Section(header: Text("Device Information")){
                    TextField("Name", text: $name)
                    TextField("Device Model", text: $type)
//                    Picker("Model", selection: $type){
//                        Text("Iphone").tag("Iphone")
//                        Text("Ipad").tag("Ipad")
//                        Text("Macbook").tag("Macbook")
//                        Text("Airpods").tag("Airpods")
//                        Text("Watch").tag("Watch")
//                    }
                    Slider(value: $batteryLevel, in: 0...1, step: 0.01, label: {
                        Text("Battery Level")
                    })
                }
            }
            .navigationTitle("Add Device")
            .toolbar {
                ToolbarItem(placement: .primaryAction){
                    Button {
                        // Add the new device
                        let newDevice = Device(name: name, batteryLevels: batteryLevel)
                        device.append(newDevice)
                        
                        // Dismiss sheet
                        dismissSheet = false
                    } label: {
                        Text("Add")
                    }
                }
            }
        }
    }
}

#Preview {

    AddDeviceView(
        dismissSheet: Binding.constant(true),
        device: Binding.constant(exampleDevices)
        )
}
