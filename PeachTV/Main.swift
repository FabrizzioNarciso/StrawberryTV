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
                        .navigationTitle("Assistir Agora")
                }
                .tabItem {
                    Label("Assistir Agora", systemImage: "play.circle.fill")
                }
                NavigationView{
                    Originals()
                        .navigationTitle("Originals")
                }
                .tabItem {
                    Label("Originals", systemImage: "rectangle.fill")
                }
                NavigationView{
                    Loja()
                        .navigationTitle("Loja")
                }
                .tabItem {
                    Label("Loja", systemImage: "bag.fill")
                }
                NavigationView{
                    Biblioteca()
                        .navigationTitle("Biblioteca")
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
