//
//  MidiaPlayer.swift
//  PearTV
//
//  Created by Fabrizio Narciso on 25/05/23.
//

import SwiftUI
import AVKit

struct MidiaPlayer: View {
    @Environment(\.dismiss) var dismiss
    @State var videoName: String = "vv1"
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
                    //.ignoresSafeArea()
                VStack {
                    HStack {
                        Button {
                            dismiss()
                        } label: {
                            Text("X")
                                .bold()
                                .font(.largeTitle)
                        }
                        Spacer()
                    }
                    Spacer()
                }
                .padding()

            }
        }
    }
    

}

struct MidiaPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MidiaPlayer(videoName: "vv2")
    }
}
