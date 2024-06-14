//
//  DeviceViewModel.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/6/14.
//

import Foundation

@Observable
class DeviceViewModel: Observable {
    var devices: [Device] = []
    
    init(){
        Task{
            try await getdevices()
        }
    }
    
    func getdevices() async throws{
        do{
            let results: [Device] = try await supabase
                .from("devices")
                .select()
                .execute()
                .value
            self.devices = results
            
        } catch {
            debugPrint(error)
        }
    }
}

