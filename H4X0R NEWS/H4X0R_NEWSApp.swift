//
//  H4X0R_NEWSApp.swift
//  H4X0R NEWS
//
//  Created by SinaVN on 6/2/1402 AP.
//

import SwiftUI

@main
struct H4X0R_NEWSApp: App {
    
    @StateObject var networkManager : NetworkManager = NetworkManager()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(networkManager)

        }
    }
}
