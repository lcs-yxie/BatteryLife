//
//  ContentView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/29.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        
        VStack{
    
            Spacer()
            
            //Text at the top
            Group{
                Text("Battery")
                Text("Life")
                    .padding(.trailing, 115)
            }
            .bold()
            .font(.system(size: 70))
            
            Spacer()
            
            //Text in the middle
            Text("Your Devices:")
                .fontWeight(.heavy)
            
            //Scroll Window at the bottom
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 75) {
                    Spacer()
                    ItemView()
                    ItemView()
                    ItemView()
                    Spacer()
                    
                }
                .padding(.top)
                .padding(.bottom)
            
                
            }
            Spacer()
            Spacer()
        }
        .padding(.top)
    }
}

#Preview {
    GalleryView()
        .preferredColorScheme(.dark)
}
