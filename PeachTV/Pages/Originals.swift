//
//  Originals.swift
//  PeachTV
//
//  Created by Fabrizio Narciso on 31/05/23.
//

import SwiftUI

struct Originals: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            
            VStack {
                ZStack {
                    Banner()
                        .frame(height: UIScreen.main.bounds.height*0.6)
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
                
                ScrollHorizontal(title: "Mais populares no momento", top10is: true, subtitleis: false, sinopseis: false)
                
                ScrollHorizontal(title: "Assista a temporadas completas", top10is: false, subtitleis: false, sinopseis: false)
                
                ScrollHorizontal(title: "Originais recentes", top10is: false, subtitleis: false, sinopseis: true)
                
                ScrollHorizontal(title: "Lançamentos futuros", top10is: false, subtitleis: true, sinopseis: false, subtitle:"Adicione agora a Seguintes")
            }
            
            
        }
        .ignoresSafeArea()
        
    }
}

struct Originals_Previews: PreviewProvider {
    static var previews: some View {
        Originals()
    }
}
