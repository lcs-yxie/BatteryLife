//
//  ContentView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/29.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                    ItemView()
                }
            .frame(width: 350, height: 350)
            }
        .padding()
        

    }
    
}

#Preview {
    GalleryView()
        .preferredColorScheme(.dark)
}
