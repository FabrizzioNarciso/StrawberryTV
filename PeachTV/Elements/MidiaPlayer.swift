//
//  MidiaPlayer.swift
//  PearTV
//
//  Created by Fabrizio Narciso on 25/05/23.
//

import SwiftUI
import AVKit
import UIKit

struct MidiaPlayer: View {
    @Environment(\.dismiss) var dismiss
    @State var videoName: String
    @State var play: Bool = false
    @ObservedObject var playerManager = PlayerManager()
   
    var body: some View {
        TimelineView(.periodic(from: .now, by: 0.0001)) { context in
            ZStack {
                VideoPlayer(player: playerManager.player!)
                    .onAppear() {
                        playerManager.videoName = videoName
                        playerManager.player?.play()
                        playerManager.player?.isMuted = true
                    }
                    .ignoresSafeArea()
            }
        }.navigationBarItems(leading: Button {
            dismiss()
        } label: {
            Text("X")
                .bold()
                .foregroundColor(.white)
        })
        .toolbar(.hidden, for: .tabBar)
    }
    

}

struct MidiaPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MidiaPlayer(videoName: "vv2")
    }
}
