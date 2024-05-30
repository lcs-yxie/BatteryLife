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
        
       
            //Symbol in the center
            Image(systemName: "macbook")
                .resizable()
                .scaledToFit()
                .foregroundColor(.black)
                .cornerRadius(10)
                .frame(width: 200, height: 200)
                .padding()
                .background {
                    //background round square
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.green, lineWidth: 20)
                        .fill(.white)
                }
        
        
    }
}

#Preview {
    ItemView()
        .preferredColorScheme(.dark)
}
