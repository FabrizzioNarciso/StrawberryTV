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
           
                
                    VStack{
                        
                        CarouselView(itemHeight: UIScreen.main.bounds.height*0.5,itemWidth: UIScreen.main.bounds.width*0.87, views: anyviewArrayMovies(data: data))
                        }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.70)
                        .padding(.top)
                        .background(
                            Rectangle()
                                .fill(Gradient(colors: [.black.opacity(0), Color(red: 0.9, green: 0.9, blue: 0.9).opacity(0.1)]))
                        )

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
                        HStack {
                            Text(item.title) //Titulo
                                .font(.title3.bold())
                                .foregroundColor(.white)
                                .padding(.bottom, 24)
                            Spacer()
                        }
                        .padding(.leading,24)
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
