//
//  ContentView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/29.
//
//Supa base passcode: 5F1zDK7miFRsp8Gp

import SwiftUI

struct GalleryView: View {
    
    @State var presentingNewItemSheet = false
    @State var devices: [Device] = exampleDevices
    
    var body: some View {
        VStack {
            Text("Battery Life")
                .fontWeight(.heavy)
                .font(.system(size: 50))
            Text("My Devices:")
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 35) {
                    Spacer()
                    NavigationLink(destination: LandingView()) {
                        ItemView(deviceTitle: "Macbook")
                    }
                    ItemView(deviceTitle: "Iphone")
                    ItemView(deviceTitle: "Airpods")
                    // Adding new device
                    ForEach(devices) { device in
                        ItemView(deviceTitle: device.name)
                    }
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            }
            .padding(.top)
            .sheet(isPresented: $presentingNewItemSheet) {
                AddDeviceView(dismissSheet: $presentingNewItemSheet, device: $devices)
            }
            .toolbar {
                // Add a button to trigger showing the sheet
                ToolbarItem(placement: .automatic) {
                    Button {
                        presentingNewItemSheet = true
                    } label: {
                        Image(systemName: "plus")
                            .foregroundStyle(.white)
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    GalleryView()
        .preferredColorScheme(.dark)
}
