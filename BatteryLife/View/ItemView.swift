//
//  ItemView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/29.
//
//Supa base passcode: 5F1zDK7miFRsp8Gp

import Foundation
import SwiftUI

struct ItemView: View {
    
    let deviceTitle: String
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(.green, lineWidth: 20)
                .fill(.white)
                .frame(width: 240, height: 60)
            

                Text(deviceTitle)
                    .foregroundStyle(.black)
                    .fontWeight(.heavy)
                    .padding(.trailing, 100)
            
        }
        
    }
    
}

#Preview {
    ItemView(deviceTitle: "Macbook")
        .preferredColorScheme(.dark)
}
