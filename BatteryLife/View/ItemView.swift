//
//  ItemView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/5/29.
//

import Foundation
import SwiftUI

struct ItemView: View {
    var body: some View {
        
        ZStack{
            
            //background round square
            RoundedRectangle(cornerRadius: 20)
                .stroke(.green, lineWidth: 20)
                .fill(.white)
                .frame(width: 250, height: 250)
            
            //Symbol in the center
            Image(systemName: "macbook")
                .foregroundColor(.black)
                .cornerRadius(10)
                .font(.system(size: 130))
            
        }
        
        
    }
}

#Preview {
    ItemView()
        .preferredColorScheme(.dark)
}
