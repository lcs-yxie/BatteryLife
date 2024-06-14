////
////  DeviceViewModel.swift
////  BatteryLife
////
////  Created by Yukun Xie on 2024/6/14.
////
///
///
///
///
import Foundation
import SwiftUI

@Observable
class DeviceViewModel: ObservableObject {
var devices: [Device] = []
var PersonWithDevices: [PersonDevice] = []

    init() {
        Task {
            try await getDevices()
        }
        Task {
            try await getPersonWithDevices()
        }
    }

    func getPersonWithDevices() async throws {
        do {
            let results: [PersonDevice] = try await supabase
                .from("person")
                .select("id, firstName, lastName, email, devices(id, name, batteryLevels)")
                .execute()
                .value

            self.PersonWithDevices = results
        } catch {
            debugPrint(error)
        }
    }

    func getDevices() async throws {
        do {
            let results: [Device] = try await supabase
                .from("device")
                .select()
                .execute()
                .value

            self.devices = results
        } catch {
            debugPrint(error)
        }
    }

    func add(device: String, batteryLevel: Float) {
        Task {
            // Make a new device instance
            let newDevice = Device(name: device, batteryLevels: batteryLevel)
            do {
                // Add the new device
                try await supabase
                    .from("device")
                    .insert(newDevice)
                    .execute()
                // Refresh the list of devices
                try await self.getDevices()
            } catch {
                debugPrint(error)
            }
        }
    }
}

