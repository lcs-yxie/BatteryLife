//
//  ContentView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/29.
//
//Supa base passcode: 5F1zDK7miFRsp8Gp

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
                NavigationLink(destination: LandingView()){
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
            AddDeviceView(dismissSheet: $presentingNewItemSheet)
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
