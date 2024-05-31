//
//  NewDeviceView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/30.
//

import SwiftUI

struct NewDeviceView: View {
    @State private var selectedTab = "One"
    var body: some View {
        
    

            VStack(alignment: .leading){
                //image and name of device
                Text("My ")
                    .fontWeight(.heavy)
                    .font(.system(size: 80))
                Text("Airpods")
                    .fontWeight(.heavy)
                    .font(.system(size: 80))
                HStack{
                    Image(systemName: "airpods")
                        .font(.system(size: 80))
                        
                    
                    Spacer()
                }
                .padding(.bottom)
                .padding(.trailing)
                
                
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
                .padding(.leading)
                
                Spacer()
            }
            .padding(.top)
            .padding(.leading)
            .font(.system(size: 40))
        
        
        
        
        
    }
    
}





struct NewDevice_Previews: PreviewProvider {
    static var previews: some View {
        TabView(selection: Binding.constant(1)){

            NewDeviceView()
                .tabItem {
                    Label("Home", systemImage: "house.circle.fill")
                }
                .tag(1)
            
            Text("Delete")
                .tabItem {
                    Label("Delete", systemImage: "trash.circle.fill")
                }
            
            Text("Setting")
                .tabItem {
                    Label("Setting", systemImage: "gear.circle.fill")
                }
            
            Text("Return")
                .tabItem {
                    Label("Return", systemImage: "arrow.left.circle.fill")
                }
        }
        .preferredColorScheme (.dark)
    }
    
}

