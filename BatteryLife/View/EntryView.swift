//
//  EntryView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/29.
//


//Supa base passcode: 5F1zDK7miFRsp8Gp
import SwiftUI

struct EntryView: View {
    var body: some View {
        NavigationStack{
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
            
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

#Preview {
    EntryView()
        .preferredColorScheme(.dark)
}
