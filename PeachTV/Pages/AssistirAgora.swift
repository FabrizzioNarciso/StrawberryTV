//
//  AssistirAgora.swift
//  PeachTV
//
//  Created by Fabrizio Narciso on 29/05/23.
//

import SwiftUI

struct AssistirAgora: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
       
                VStack {
                    ZStack {
                        Banner()
                            .frame(height: UIScreen.main.bounds.height*0.75)
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
                    
                    ScrollHorizontal(title: "Assita a estreias grátis", top10is: false, subtitleis: false, sinopseis: false)
                    
                    ScrollHorizontal(title: "Mais populares no Peach TV+", top10is: true, subtitleis: false, sinopseis: false)
                    
                    ScrollHorizontal(title: "Diversão em família", top10is: false, subtitleis: false, sinopseis: false)
                    
                    ScrollHorizontal(title: "Filmes em destaque", top10is: false, subtitleis: true, sinopseis: false, subtitle:"Os principais títulos em um só lugar")
                    
                }
               
        }
        .ignoresSafeArea()
    }
}

struct AssistirAgora_Previews: PreviewProvider {
    static var previews: some View {
        AssistirAgora()
    }
}
