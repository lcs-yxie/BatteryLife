//
//  Person.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/6/14.
//

import Foundation

struct Person: Identifiable, Codable {
    var id: Int
    var firstName: String
    var lastName: String
    var email: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case email
    }
}
