//
//  Cryptos_SwiftUIApp.swift
//  Cryptos-SwiftUI
//
//  Created by Necati Alperen IŞIK on 19.09.2024.
//

import SwiftUI

@main
struct Cryptos_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
