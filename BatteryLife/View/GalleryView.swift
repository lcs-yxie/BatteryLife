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
                        NavigationLink(destination: NewDeviceView()){
                            ItemView()
                            
                        }
                        
                        ItemView()
                        ItemView()
                        //Adding new device
                        Image(systemName: "plus.circle.fill")
                            .padding(.trailing, 65)
                            .font(.system(size: 220))
                            .foregroundColor(.white)
                        
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
