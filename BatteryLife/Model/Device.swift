//
//  BetteryLifeViewModel.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/6/7.
//

import Foundation

struct Device: Identifiable, Codable {
    var id: Int?
    var name: String
    var batteryLevel: Float
    var done: Bool
}
