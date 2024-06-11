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
    var batteryLevels: Float

}

let device1 = Device(id: 1, name: "MacBook Pro", batteryLevels: 0.75)
let device2 = Device(id: 2, name: "iPhone 12", batteryLevels: 0.50)
let device3 = Device(id: 3, name: "iPad Air", batteryLevels: 0.85)

let exampleDevices = [
device1,
device2,
device3
]
