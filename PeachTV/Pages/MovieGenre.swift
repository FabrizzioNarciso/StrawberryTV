//
//  SwiftUIView.swift
//  PeachTV
//
//  Created by Anderson  Vulto on 31/05/23.
//

import SwiftUI

struct MovieGenre: View {
    
    let genre: String
    let image: String
    var body: some View {
        
        ScrollView {
            VStack {
                ZStack {
                    Image(image)
                        .resizable()
                        .scaledToFill()
                    Image(image)
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFill()
                        .foregroundColor(.black.opacity(0.3))
                    Text(genre)
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                }
                ScrollHorizontal(title: "Lançamentos", top10is: false, subtitleis: true, sinopseis: false)
                ScrollHorizontal(title: "Séries de "+genre, top10is: false, subtitleis: true, sinopseis: false)
                ScrollHorizontal(title: "Filmes de "+genre, top10is: false, subtitleis: true, sinopseis: false)
                ScrollHorizontal(title: genre+" Nacional", top10is: false, subtitleis: true, sinopseis: false)

            }
            
        }
        .navigationTitle(genre)
        .navigationBarTitleDisplayMode(.inline)
    }
}
