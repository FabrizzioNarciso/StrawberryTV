//
//  Loja.swift
//  PeachTV
//
//  Created by Fabrizio Narciso on 31/05/23.
//

import SwiftUI

struct Loja: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
        
                VStack {
                    ZStack {
                        CarouselFunc()
                        VStack {
                            HStack {
                                Spacer()
                                Image(systemName: "person.crop.circle.fill")
                                    .font(.title2)
                            }
                            Spacer()
                        }
                        .padding()
                        .padding(.top,96)
                    }
                    
                    ScrollHorizontal(title: "Filmes mais vendidos", top10is: true, subtitleis: false, sinopseis: false)
                    
                    ScrollHorizontal(title: "Novos filmes", top10is: false, subtitleis: false, sinopseis: false)
                    
                    ScrollHorizontal(title: "Filmes em destaque", top10is: false, subtitleis: false, sinopseis: false)
                    
                    ScrollHorizontal(title: "Lançamentos", top10is: false, subtitleis: true, sinopseis: false, subtitle:"Diponível agora para comprar ou alugar")
                }
               
            
        }
        .ignoresSafeArea()
    }
}

struct Loja_Previews: PreviewProvider {
    static var previews: some View {
        Loja()
    }
}
