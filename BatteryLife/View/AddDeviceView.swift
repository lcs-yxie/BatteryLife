//
//  AddDeviceView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/6/10.
//

import SwiftUI

struct AddDeviceView: View {
    
    @State private var name: String = ""
    @State private var type: String = ""
    @Binding var dismissSheet: Bool
    
    var body: some View {
        

        NavigationStack{
            Form{
                Section(header: Text("Device Information")){
                    TextField("Name", text: $name)
                    Picker("Model", selection: $type){
                        Text("Iphone").tag("Iphone")
                        Text("Ipad").tag("Ipad")
                        Text("Macbook").tag("Macbook")
                        Text("Airpods").tag("Airpods")
                        Text("Watch").tag("Watch")
                    }
                }
            }
            .navigationTitle("Add Device")
            .toolbar {
                ToolbarItem(placement: .primaryAction){
                    Button {
                        //Add the new device
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
    AddDeviceView(dismissSheet: Binding.constant(true))
        .preferredColorScheme(.dark)
}
