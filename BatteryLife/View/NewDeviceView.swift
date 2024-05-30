//
//  NewDeviceView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/30.
//

import SwiftUI

struct NewDeviceView: View {
    var body: some View {
        
        VStack{
            Spacer()
            Text("My Airpods")
                .fontWeight(.heavy)
                .font(.system(size: 80))
            HStack{
                Image(systemName: "airpods")
                    .font(.system(size: 80))
                    .padding(.leading, 40)
                
                    Spacer()
            }
            Spacer()
            
            ZStack{
                Image(systemName: "circle")
                    .font(.system(size: 280))
                    .foregroundStyle(.green)
                Text("78%")
                fontWeight(.heavy)
                .font(.system(size: 50))
            }
            Spacer()
        }
        .padding(.bottom)
    }
    
}

#Preview {
    NewDeviceView()
        .preferredColorScheme(.dark)
}
