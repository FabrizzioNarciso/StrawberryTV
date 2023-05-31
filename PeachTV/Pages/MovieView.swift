//
//  MovieView.swift
//  PeachTV
//
//  Created by Ana Laura Alves Cordeiro on 29/05/23.
//

import SwiftUI

struct MovieView: View {
    @State private var expanded: Bool = false
    
    let categoria = "terror"
    let ano = 0000
    let hora = "h min"
    @State var bool = false
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                ZStack{
                    Rectangle().frame(width: geometry.size.width, height: geometry.size.height)
                        .foregroundColor(.black)
                        .ignoresSafeArea()
                    ScrollView(showsIndicators: false){
                        Spacer(minLength: 326)
                        //Banner
                        VStack{
                            Text("Title")
                                .foregroundColor(.white)
                                .font(.title)
                            Text("\(categoria) ・ \(ano) ・ \(hora) Apple TV+")
                                .fontDesign(.rounded)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5490196078)))
                            
                        }
                        //Play Button
                        VStack{
                            Button {
                                bool = true
                            } label: {
                                HStack{
                                    Image(systemName: "play.fill")
                                    Text("Play")
                                        .fontWeight(.heavy)
                                }
                                .frame(width: 265, height: 48, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 0.1176470588, green: 0.1176470588, blue: 0.1176470588, alpha: 1)))
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8470588235)))
                                .cornerRadius(10)
                                
                            }
                            VStack{
                                
                                if !expanded {
                                    HStack{
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                                            .lineLimit(3)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8470588235)))
                                        VStack{
                                            Spacer()
                                            Button {
                                                expanded.toggle()
                                            } label: {
                                                Text("more").foregroundColor(.accentColor)
                                            }
                                        }
                                        
                                    }
                                    
                                    //                                        .foregroundColor(.accentColor)
                                }
                                
                            }.padding()
                            
                        }
                        .background(Material.ultraThin)
                        
                        ScrollHorizontal(title: "Trailers", top10is: false, subtitleis: true, sinopseis: false)
                            .environmentObject(images)
                        
                        //Erros de gravação
                        VStack{
                            Button(action: {
                                
                            }, label: {
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.gray)
                                        .frame(width: 350, height: 450, alignment: .center)
                                        .cornerRadius(14)
                                    
                                    HStack{
                                        VStack(alignment: .leading){
                                            Spacer(minLength: 354)
                                            
                                            Text("Title")
                                                .font(.title)
                                                .bold()
                                                .foregroundColor(.white)
                                            Text("Assista aos erros de gravação.")
                                                .font(Font.headline)
                                                .fontDesign(.rounded)
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white)
                                        }.padding(.horizontal)
                                        Spacer()
                                    }.padding()
                                }
                            })
                            .padding()
                        }.background(
                            .ultraThickMaterial
                        )
                        
                        ScrollHorizontal(title: "Bonus Content", top10is: false, subtitleis: true, sinopseis: false)
                            .environmentObject(images)
                        Divider()
                        ///Tenho que conseguir mudar o texto de cada um
                        ///Tenho que conseguir tirar o degrade
                        ScrollHorizontal(title: "Related", top10is: false, subtitleis: false, sinopseis: false)
                            .environmentObject(images)
                        //Bonus, Related, How to watch and cast
                        VStack(alignment: .leading){
                            Divider()
                            Text("Como assistir")
                                .font(.title2)
                                .fontWeight(.bold)
                            VStack(alignment: .leading,spacing: 0){
                                Rectangle()
                                Divider()
                                HStack{
                                    VStack(alignment:.leading, spacing: 4){
                                        Text("Play")
                                            .font(.title3)
                                            .bold()
                                        Text("Subscribed")
                                            .font(.subheadline)
                                            .fontDesign(.rounded)
                                            .fontWeight(.medium)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8470588235)))
                                    }
                                    .padding()
                                    
                                    
                                    Spacer()
                                    
                                }
                                .frame(height: 58)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2470588235)))
                                
                            }.frame(width:230,height: 187)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading){
                                Divider()
                                Text("Cast&Crew")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                ScrollView(.horizontal){
                                    HStack{
                                        ForEach(1..<10){_ in
                                            VStack(spacing: 4){
                                                Image(systemName: "person.circle.fill")
                                                    .resizable()
                                                    .frame(width:97,height: 97)
                                                    .padding(.bottom,4)
                                                Text("Ator/Atriz")
                                                    .fontWeight(.semibold)
                                                Text("Personagem")
                                                    .fontDesign(.rounded)
                                                    .fontWeight(.medium)
                                                    .font(.subheadline)
                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8470588235)))
                                            }.padding(.horizontal,2)
                                        }
                                    }
                                }
                            }
                        }.padding()
                        
                        //About & Information
                        
                        Group{
                            
                            VStack(alignment: .leading) {
                                Text("Sobre")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(UIColor.white))
                                ScrollView (.horizontal, showsIndicators: false){
                                    HStack{
                                        Button{
                                        }label:{
                                            VStack(alignment: .leading,spacing: 24){
                                                VStack(alignment: .leading){
                                                    Text("Title")
                                                        .font(.title3)
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(Color(UIColor.white))
                                                    Text("Genre")
                                                        .font(Font.callout.smallCaps())
                                                        .fontDesign(.rounded)
                                                        .fontWeight(.regular)
                                                        .foregroundColor(Color(UIColor.lightText))
                                                }
                                                
                                                VStack{
                                                    HStack{
                                                        Text("Lorem ipsum dolor sit amet,n ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                                                            .lineLimit(4, reservesSpace: true)
                                                            .font(.callout)
                                                            .foregroundColor(Color(UIColor.lightText))
                                                            .multilineTextAlignment(.leading)
                                                        VStack{
                                                            Spacer()
                                                            Button {
                                                                expanded.toggle()
                                                            } label: {
                                                                Text("more").foregroundColor(.accentColor)
                                                            }
                                                           
                                                        }
                                                    }
                                                }
                                                
                                            }.padding()
                                                .frame(width: geometry.size.width*0.9)
                                                .background(Color(UIColor.systemGray3))
                                                .cornerRadius(10)
                                        }
                                    }
                                }
                                
                                Divider().padding(.vertical, 24)
                                
                                //Informacoes
                                VStack(spacing: 16){
                                    Text("Informações")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(UIColor.white))
                                    
                                    VStack{
                                        Text("Título da informação")
                                            .font(Font.callout)
                                        Text("Informação")
                                    }
                                }
                                
                                
                                
                            }.padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                            .frame(width: geometry.size.width)
                            .background(Material.ultraThin)
                            
                    }
                }.sheet(isPresented: $expanded) {
                    NavigationView {
                        VStack {
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8470588235)))
                                .padding()
                            Spacer()
                        }
                        .navigationBarItems(trailing:
                                                Button {
                            expanded.toggle()
                        } label: {
                            Text("Done").foregroundColor(.accentColor)
                                .fontWeight(.bold)
                        })
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle(
                            Text("Movie Title")
                            
                        )
                    }
                }
            }
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
