//
//  ContentView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/29.
//

import SwiftUI

struct GalleryView: View {
    
    var body: some View {
        
        
                Text("Battery Life")
            .fontWeight(.heavy)
            .font(.system(size: 50))
        Text("My Devices:")
                //Scroll Window at the bottom
                ScrollView(.vertical, showsIndicators: false) {
                   VStack(alignment: .center, spacing: 35) {
                        Spacer()
                        NavigationLink(destination: NewDeviceView()){
                            ItemView()
                        }
                        ItemView()
                        ItemView()
                        //Adding new device
            
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                    
                    
                } // <2>
                
                
                
            .padding(.top)
            
            
        
    }
}

#Preview {
    GalleryView()
        .preferredColorScheme(.dark)
}
