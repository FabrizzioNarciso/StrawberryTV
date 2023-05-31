//
//  PeachTVApp.swift
//  PeachTV
//
//  Created by Anderson  Vulto on 29/05/23.
//

import SwiftUI

let images = Images()

@main
struct PeachTVApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView{
                    Buscar()
                }
                    .tabItem {
                        Label("Buscar", systemImage: "magnifyingglass")
                    }
                NavigationView {
                    SomeView()
                }
                    .tabItem {
                        Label("category", systemImage: "chevron.right")
                    }
            }.environmentObject(images)
                .preferredColorScheme(.dark)
        }
    }
}
