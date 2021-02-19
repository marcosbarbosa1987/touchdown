//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Marcos Barbosa on 17/02/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(Shop())
        }
    }
}
