//
//  MidiaPlayer.swift
//  PearTV
//
//  Created by Fabrizio Narciso on 25/05/23.
//

import SwiftUI
import AVKit

struct MidiaPlayer: View {
    @ObservedObject var playerManager = PlayerManager()
    var body: some View {
        VideoPlayer(player: playerManager.player)
    }
}

struct MidiaPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MidiaPlayer()
    }
}
