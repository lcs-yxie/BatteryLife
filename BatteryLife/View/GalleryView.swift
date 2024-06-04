//
//  ContentView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/29.
//

import SwiftUI

struct GalleryView: View {
    
    @State var presentingNewItemSheet = false
    
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
            
            
        }
        .padding(.top)
        .sheet(isPresented: $presentingNewItemSheet) {
            Text("Add Device")
        }
        .toolbar {
            // Add a button to trigger showing the sheet
            ToolbarItem(placement: .automatic) {
                Button {
                    presentingNewItemSheet = true
                } label: {
                    Image(systemName: "plus")
                    .foregroundStyle(.white)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        
        
    }
    
}

#Preview {
    GalleryView()
    .preferredColorScheme(.dark)
}
