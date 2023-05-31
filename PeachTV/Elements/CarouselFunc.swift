//
//  CarouselFunc.swift
//  PeachTV
//
//  Created by Ana Laura Alves Cordeiro on 29/05/23.
//

import SwiftUI

struct CarouselFunc: View {
    @State var navigate = false
    @EnvironmentObject var data: Images
        var body: some View {
            GeometryReader{geometry in
                ScrollView(showsIndicators: false){
                    VStack{
                        ZStack{
                            CarouselView(itemHeight: geometry.size.height*0.53,itemWidth: geometry.size.width*0.8, views: anyviewArrayMovies(data: data))
                        }.frame(width: geometry.size.width, height: geometry.size.height*0.6)
    //                        .background( LinearGradient(colors: [Color.white.opacity(0.01), Color.white.opacity(0.15)], startPoint: .center, endPoint: .bottom))
                            .background(.regularMaterial)
                    }
                }
                
    //            CarouselView(itemHeight: geometry.size.height, views: anyviewArrayMovies(carosselCard?s: carousselContent))
                
            }
        }
    }

func anyviewArrayMovies(data: Images) -> [AnyView]{
    var caroussel : [AnyView] = []
    @State var navigate = false
    
    for item in data.images{
        caroussel.append(AnyView(
                ZStack {
                    Rectangle()
                    Image(item.VimageRef) //imagem
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(10)
                        .overlay {
                            LinearGradient(colors: [Color.black.opacity(0.01), Color.black],
                                           startPoint: .center,
                                           endPoint: .bottom)
                        }

                    VStack {
                        Spacer()
                        Text(item.title) //Titulo
                            .font(.title3.bold())
                            .foregroundColor(.white)
                            .padding(.leading, 16)
                            .padding(.bottom, 16)
                    }
            }
        ))
    }
        return caroussel
}


struct CarouselFunc_Previews: PreviewProvider {
    static var previews: some View {
        CarouselFunc()
    }
}
