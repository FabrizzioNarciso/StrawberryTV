//
//  Botao.swift
//  PeachTV
//
//  Created by Fabrizio Narciso on 01/06/23.
//

import SwiftUI

struct Botao: View {
    @State var video: String
    @State private var isPresented = false

    var body: some View {
        Button {
            isPresented.toggle()
        } label: {
            HStack{
                Image(systemName: "play.fill")
                Text("Play")
                    .fontWeight(.heavy)
            }
            .frame(width: 265, height: 48, alignment: .center)
            .foregroundColor(Color(UIColor.darkText))
            .background(Color(UIColor.white))
            .cornerRadius(10)
            
        }
        .fullScreenCover(isPresented: $isPresented, content: MidiaPlayer.init)
    }
}

struct Botao_Previews: PreviewProvider {
    static var previews: some View {
        Botao(video: "")
    }
}
