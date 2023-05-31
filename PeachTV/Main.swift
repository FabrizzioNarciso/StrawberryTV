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
                    AssistirAgora()
                }
                
                    .tabItem {
                        Label("Assistir Agora", systemImage: "play.circle.fill")
                    }
                NavigationView{
                    Originals()
                }
                    .tabItem {
                        Label("Originals", systemImage: "rectangle.fill")
                    }
                NavigationView{
                    Originals()
                }
                    .tabItem {
                        Label("Loja", systemImage: "bag.fill")
                    }
                NavigationView{
                    Originals()
                }
                    .tabItem {
                        Label("Biblioteca", systemImage: "square.stack.fill")
                    }
                NavigationView{
                    Buscar()
                }
                    .tabItem {
                        Label("Buscar", systemImage: "magnifyingglass")
                    }
            }.environmentObject(images)
                .preferredColorScheme(.dark)
        }
    }
}
