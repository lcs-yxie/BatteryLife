//
//  LandingView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/6/6.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView(selection: Binding.constant(1)){
            
            NewDeviceView()
                .tabItem {
                    Label("Home", systemImage: "house.circle.fill")
                }
                .tag(1)
            
            Text("Data")
                .tabItem {
                    Label("Data", systemImage: "chart.bar.fill")
                }
            
            SettingView()
                .tabItem {
                    Label("Setting", systemImage: "gear.circle.fill")
                }
        }
        .preferredColorScheme (.dark)
    }
}

#Preview {
    LandingView()
}
