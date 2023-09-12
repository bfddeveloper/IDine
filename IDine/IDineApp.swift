//
//  IDineApp.swift
//  IDine
//
//  Created by Brody Dickson on 8/31/23.
//

import SwiftUI

@main
struct IDineApp: App {
    @ObservedObject var order = Order()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
