//
//  SettingView.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/6/4.
//

import SwiftUI
import Foundation

struct SettingView: View {
    @State private var textFieldData = ""
    @State private var name = ""
    @State private var symbol = ""
    var body: some View {
        VStack(spacing: 20) {
            Text("Setting")
                .font(.largeTitle)
            Text("Title Text (Placeholder or Hint)")
                .foregroundStyle(.gray)

                TextField("Here is title text", text: $textFieldData)
                    .textFieldStyle(.roundedBorder)
                    .foregroundStyle(.orange)
                TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)
                .foregroundStyle(.orange)
                TextField("Symbol", text: $symbol)
                    .textFieldStyle(.roundedBorder)

            
//            .overlay(
//            // Add the outline
//            RoundedRectangle(cornerRadius: 8)
//            .stroke(Color.white, lineWidth: 2)
//            )

            .padding(.horizontal)
            
        }
        .font(.title)
        .foregroundColor(.white)
        
    }
}

#Preview {
    SettingView()
}
