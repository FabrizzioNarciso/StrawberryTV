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
            ZStack {
                VStack {
                    HStack {
                        Text("Explore")
                            .font(.title2.bold())
                        Spacer()
                    }.padding(.top)
                    
                    LazyVGrid(columns: layout, spacing: 8) {
                        ForEach(category.images, id: \.self) {item in
                            NavigationLink {
                                MovieGenre(genre: item.genre, image: item.HimageRef)
                                
                            } label: {
                                ZStack {
                                    Image(item.HimageRef) //imagem
                                    
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width*0.44,height: UIScreen.main.bounds.height*0.10)
                                        .cornerRadius(10)
                                    
                                    Image(item.HimageRef) //overlay escuro
                                    
                                        .renderingMode(.template)
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width*0.44,height: UIScreen.main.bounds.height*0.10)
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
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: "person.crop.circle.fill")
                            .font(.title2)
                    }
                    Spacer()
                }
                .padding(.trailing,24)
                .padding(.top, -88)
            }
        }
        
        }
        
}
