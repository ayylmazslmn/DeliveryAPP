//
//  DeliveryApp.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 8.01.2024.
//

import SwiftUI

@main
struct DeliveryApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            DeliveryTabView().environmentObject(order)
        }
    }
}
