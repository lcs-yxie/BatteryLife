//
//  Device+person.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/6/14.
//

import Foundation

struct PersonDevice: Identifiable, Codable {
    let id: Int
    let firstName: String
    let lastName: String
    let email: String
    let devices: [Device]
    
    struct Device: Identifiable, Codable {
        let id: Int
        let name: String
        let batteryLevels: Float
    }

}
