//
//  NewDeviceView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/30.
//

import SwiftUI

struct NewDeviceView: View {
    var body: some View {
        NavigationStack {
            VStack{
                //image and name of device
                Text("My Airpods")
                    .fontWeight(.heavy)
                    .font(.system(size: 80))
                HStack{
                    Image(systemName: "airpods")
                        .font(.system(size: 80))
                        .padding(.leading, 40)
                    
                    Spacer()
                }
                .padding(.bottom)
                
                ZStack{
                    //battery cricle
                    Image(systemName: "circle")
                        .font(.system(size: 280))
                    
                    //battery percentage
                    Text("78%")
                        .fontWeight(.heavy)
                        .font(.system(size: 70))
                }
                .foregroundStyle(.green)
                Spacer()
            }
            .padding(.top)
            .toolbar {
                Spacer()
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "gear")
                }
                Spacer()
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "trash")
                }
                Spacer()
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "house.circle.fill")
                }
                Spacer()
            }
        }
    }
    
}

#Preview {
    NewDeviceView()
        .preferredColorScheme(.dark)
}
