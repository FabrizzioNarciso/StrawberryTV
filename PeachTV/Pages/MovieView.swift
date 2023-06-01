//
//  MovieView.swift
//  PeachTV
//
//  Created by Ana Laura Alves Cordeiro on 29/05/23.
//

import SwiftUI

struct MovieView: View {
    @State private var expanded: Bool = false
    @State private var isNavigating: Bool = false
    @State var midia: MidiaData
    
    @State var bool = false
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                ZStack{
                    VStack{
                        Image(midia.VimageRef)
                            .resizable()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .scaledToFill()
                            .ignoresSafeArea()
                        Spacer()
                    }.background(Color(UIColor.tertiarySystemFill))
                    ScrollView(showsIndicators: false){
                        Spacer(minLength: 326)
                        //Banner
                        
                        VStack(spacing: 0){
                            
                            VStack{
                                // Midia Title
                                VStack{
                                    Text(midia.title)
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .fontWeight(.heavy)
                                    Text(midia.genre + "・" + midia.year + "・" + midia.time + "Apple TV+")
                                        .fontDesign(.rounded)
                                        .foregroundColor(Color(UIColor.lightText))
                                    
                                }
                                
                                .frame(width: geometry.size.width)
                                
                                //Play Button
                                VStack{
                                    NavigationLink {
                                        MidiaPlayer(videoName: midia.video)
                                            .navigationBarBackButtonHidden()
                                            
                                    } label: {
                                        HStack{
                                            Image(systemName: "play.fill")
                                            Text("Play")
                                                .fontWeight(.heavy)
                                        }.frame(width: 265, height: 48, alignment: .center)
                                            .foregroundColor(Color(UIColor.darkText))
                                            .background(Color(UIColor.white))
                                            .cornerRadius(10)
                                    }

                                    
                                    //Sinopse
                                    VStack{
                                        
                                        if !expanded {
                                            HStack{
                                                Text(midia.sinopse)
                                                    .lineLimit(3)
                                                    .foregroundColor(Color(UIColor.white))
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
                                }
                                .frame(width: geometry.size.width)
                            }.background {
                                LinearGradient(gradient: Gradient(stops: [
                                    .init(color: Color.black.opacity(0), location: 0),
                                    .init(color: Color.black.opacity(0.8), location: 0.2),
                                    .init(color: Color.black.opacity(1), location: 1)]), startPoint: .top, endPoint: .bottom)
                                
                            }
                            
                            
                            VStack{
                                ScrollHorizontal(title: "Trailers", top10is: false, subtitleis: true, sinopseis: false)
                                    .environmentObject(images)
                                    .padding(.vertical)
                                
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
                                    LinearGradient(colors: [.black.opacity(0), Color(UIColor.quaternaryLabel)], startPoint: .top, endPoint: .bottom)
                                )
                                
                                ScrollHorizontal(title: "Conteúdo bônus", top10is: false, subtitleis: true, sinopseis: false)
                                    .environmentObject(images)
                                Divider()
                                ///Tenho que conseguir mudar o texto de cada um
                                ///Tenho que conseguir tirar o degrade
                                ScrollHorizontal(title: "Relacionados", top10is: false, subtitleis: false, sinopseis: false)
                                    .environmentObject(images)
                                //Bonus, Related, How to watch and cast
                                VStack(alignment: .leading){
                                    Divider()
                                    Text("Como assistir")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    VStack {
                                        VStack(alignment: .leading,spacing: 0){
                                            Rectangle()
                                            Divider()
                                            HStack{
                                                VStack(alignment:.leading, spacing: 4){
                                                    Text("Assistir")
                                                        .font(.title3)
                                                        .bold()
                                                    Text("Assinado")
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
                                            Text("Elenco e equipe")
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
                                                            Text("Nome")
                                                                .fontWeight(.semibold)
                                                            Text("Função")
                                                                .fontDesign(.rounded)
                                                                .fontWeight(.medium)
                                                                .font(.subheadline)
                                                                .foregroundColor(Color(UIColor.gray))
                                                        }.padding(.horizontal,2)
                                                    }
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
                                                            Text("Titulo")
                                                                .font(.title3)
                                                                .fontWeight(.semibold)
                                                                .foregroundColor(Color(UIColor.white))
                                                            Text("Genero")
                                                                .font(Font.callout.smallCaps())
                                                                .fontDesign(.rounded)
                                                                .fontWeight(.regular)
                                                                .foregroundColor(Color(UIColor.lightText))
                                                        }
                                                        
                                                        VStack{
                                                            HStack{
                                                                Text(midia.sinopse)
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
                                                        .background(Color(UIColor.tertiaryLabel))
                                                        .cornerRadius(10)
                                                }
                                            }
                                        }
                                        
                                        Divider().padding(.vertical, 24)
                                        
                                        //Informacoes
                                        VStack(alignment:.leading,spacing: 32){
                                            
                                            
                                            VStack(alignment: .leading, spacing: 16){
                                                Text("Informações")
                                                    .font(.title2)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color(UIColor.white))
                                                VStack(alignment: .leading){
                                                    Text("Título da informação")
                                                        .font(Font.footnote)
                                                    Text("Informação")
                                                        .font(Font.footnote)
                                                        .foregroundColor(Color(UIColor.gray))
                                                }
                                            }
                                            
                                            
                                            VStack(alignment: .leading, spacing: 16){
                                                Text("Idiomas")
                                                    .font(.title2)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color(UIColor.white))
                                                Text("Audio")
                                                    .font(Font.footnote)
                                                    .foregroundStyle(.primary)
                                                Text("Idiomas")
                                                    .font(Font.footnote)
                                                    .foregroundStyle(.secondary)
                                                Text("Legendas")
                                                    .font(Font.footnote)
                                                    .foregroundStyle(.primary)
                                                Text("Idiomas")
                                                    .font(Font.footnote)
                                                    .foregroundStyle(.secondary)
                                                
                                            }
                                            
                                        }
                                        
                                        Spacer()
                                        
                                    }.padding(.horizontal)
                                        .padding(.vertical, 8)
                                }
                                .frame(width: geometry.size.width)
                                .background(Color(UIColor.tertiarySystemFill))
                            }.background(Color(UIColor.systemBackground))
                        }
                    }
                }.sheet(isPresented: $expanded) {
                    NavigationView {
                        VStack {
                            Text(midia.sinopse)
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
        MovieView(midia: Images().images[0])
    }
}
