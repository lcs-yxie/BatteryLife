//
//  ContentView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/29.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 80) {
                ItemView()
                ItemView()
                ItemView()
                }
            .frame(width: 770, height: 350)
            }
        
        .padding()
        

    }
    
}

#Preview {
    GalleryView()
    .preferredColorScheme(.dark)
}
