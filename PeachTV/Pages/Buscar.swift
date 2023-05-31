//
//  ContentView.swift
//  PearTV
//
//  Created by Fabrizio Narciso on 22/05/23.
//

import SwiftUI

struct Buscar: View {
    
    @State var text = ""
    
    @EnvironmentObject var category: Images
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ] //how many columns do I want (each GridItem is a column in this case)
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Explore")
                        .font(.title2.bold())
                    Spacer()
                }.padding(.top)
                
                LazyVGrid(columns: layout, spacing: 8) {
                    ForEach(category.images, id: \.self) {item in
                        NavigationLink {
                            Category(genre: item.genre, image: item.imageRef)
                        } label: {
                            ZStack {
                                Image(item.imageRef) //imagem
                                    .resizable()
                                    .scaledToFill()
                                    .cornerRadius(10)
                                
                                Image(item.imageRef) //overlay escuro
                                    .renderingMode(.template)
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .foregroundColor(.black.opacity(0.25))
                                
                                VStack {
                                    Spacer()
                                    HStack {
                                        Text(item.genre) //título da seção
                                            .font(.title3.bold())
                                            .foregroundColor(.white)
                                            .padding(.leading, 8)
                                        Spacer()
                                    }
                                    .padding(.bottom, 8)
                                }
                            }
                            
                        }
                    }
                    
                }
                
                
                
            }
            .padding(.horizontal)
            .navigationBarTitleDisplayMode(.large)
            .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Programas, Filmes e Mais")
            .navigationTitle("Buscar")
            
        }
        
        }
        
}


struct Category: View {
    
    let genre: String
    let image: String
    var body: some View {
        
        ScrollView {
            VStack {
                ZStack {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                    Image(image)
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
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
