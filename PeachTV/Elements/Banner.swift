//
//  Highlight.swift
//  PearTV
//
//  Created by Fabrizio Narciso on 23/05/23.
//

import SwiftUI
import AVKit


struct Banner: View {
    @State private var currentPageIndex = 0
    @EnvironmentObject var images: Images
    
    let timer = Timer.publish(every: 10, on: .current, in: .common).autoconnect()
    
    var body: some View {
        TabView(selection: $currentPageIndex) {
            ForEach(0 ..< 6, id: \.self) { index in
                NavigationLink {
                    MovieView(midia: images.images[index])
                } label: {
                    Card(title:images.images[index].title,sinops:images.images[index].sinopse,indic:images.images[index].classificacao, imagem: images.images[index].VimageRef,video: images.images[index].video)
                }
            }
        }
        .tabViewStyle(.page)
        .onReceive(timer) { _ in
            currentPageIndex = (currentPageIndex + 1)
        }
    }
}

struct Card: View {
    @State var title: String
    @State var sinops: String
    @State var indic: String
    @State var imagem: String
    @State var video: String
    @State var timer = false
    @ObservedObject var playerManager = PlayerManager()
    
    var body: some View {
        
        
        TimelineView(.periodic(from: .now, by: 1)) { context in
            if timer == false {
                ZStack {
                    GeometryReader { geometry in
                        Image(imagem)
                            .resizable()
                            .frame(height: geometry.size.height)
                    }
                    VStack {
                        Spacer()
                        Text (title)
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        VStack {
                            Label("classificação: \(indic)", systemImage:"exclamationmark.triangle" )
                                .foregroundColor(Color.white)
                            HStack {
                                Spacer()
                                Text(sinops)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal)
                                    .padding(.bottom,40)
                                    .foregroundColor(Color.white)
                               Spacer()
                            }
                        }
                        .background(
                            Rectangle()
                                .fill(Material.ultraThick.opacity(0.05))
                        )
                    }
                }
            } else {
                ZStack {
                    GeometryReader { geometry in
                        VideoPlayer(player: playerManager.player!)
                            .disabled(true)
                            .frame(height: geometry.size.height*1.5)
                            .padding(.top,-100)
                    }
                            
                    VStack {
                        Spacer()
                        Text (title)
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        VStack {
                            Label("classificação: \(indic)", systemImage:"exclamationmark.triangle" )
                                .foregroundColor(Color.white)
                            HStack {
                                Spacer()
                                Text(sinops)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal)
                                    .padding(.bottom,40)
                                    .foregroundColor(Color.white)
                               Spacer()
                            }
                        }
                        .background(
                            Rectangle()
                                .fill(Material.ultraThin.opacity(0.5))
                        )

                    }
                }
            }
        }
        .onAppear(){
            timer = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                timer = true
            }
            playerManager.videoName = video
            playerManager.player?.play()
            playerManager.player?.isMuted = true
        }
        .onDisappear(){
            timer = false
        }
        
        
    }
}


struct Highlight_Previews: PreviewProvider {
    static var previews: some View {
        Banner()
    }
}

