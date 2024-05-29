//
//  EntryView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/29.
//

import SwiftUI

struct EntryView: View {
    var body: some View {
        NavigationView{
            //Creating a button
            NavigationLink(destination: GalleryView()) {
                ZStack {
                    Image(systemName: "circle")
                        .font(.system(size: 280))
                        .foregroundStyle(.green)
                    Image(systemName: "bolt.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 150))
                }
                .padding()
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
        }
    }
    
}

#Preview {
    EntryView()
}
