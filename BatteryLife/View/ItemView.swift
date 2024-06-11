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
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(.green, lineWidth: 20)
                .fill(.white)
                .frame(width: 340, height: 60)
            
            HStack{
                //Symbol in the center
                
                Image(systemName: "macbook")
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
                    .padding(.leading, 30)
                    Spacer()
                Text("My Macbook")
                    .foregroundStyle(.black)
                    .fontWeight(.heavy)
                    .padding(.trailing, 100)
            }
        }
        
    }
    
}

#Preview {
    ItemView()
        .preferredColorScheme(.dark)
}
