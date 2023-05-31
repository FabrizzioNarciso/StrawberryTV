//
//  Scroller.swift
//  PearTV
//
//  Created by Fabrizio Narciso on 26/05/23.
//

import SwiftUI

struct Unit: View {
    
    
    @State var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
    }
}




struct ScrollHorizontal: View {
    @EnvironmentObject var item: Images
    var title: String
    var top10is: Bool
    var subtitleis: Bool
    var sinopseis: Bool
    var subtitle: String = ""
    
    
    var body: some View {
            VStack {
                NavigationLink {
                    //List()
                } label: {
                    HStack {
                        Text(title)
                            .font(.title2)
                            .foregroundColor(Color.white)
                            .bold()
                        Image(systemName: "chevron.forward")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }

                }
                .padding(.horizontal)
                
                
                if subtitleis == true {
                    HStack {
                        Text(subtitle)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.horizontal)
                }
                
                let rows = [GridItem(.flexible())]
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    

                    LazyHGrid(rows: rows, spacing: 8) {
                        ForEach(0..<item.images.count,id: \.self) { index in
                            VStack {
                                
                                NavigationLink {
                                    //filme
                                } label: {
                                    Unit(image: item.images[index].imageRef)
                                }
                                //.padding(.horizontal)
                                
                                if top10is == true {
                                    HStack {
                                        Text("\(index + 1)")
                                            .foregroundColor(.gray)
                                            .font(.title)
                                            .bold()
                                        VStack {
                                            HStack {
                                                Text(item.images[index].title)
                                                    .foregroundColor(.white)
                                                Spacer()
                                            }
                                            //.padding(.leading,1)
                                            HStack {
                                                Text(item.images[index].genre)
                                                    .foregroundColor(.gray)
                                                Spacer()
                                            }
                                            //.padding(.leading,1)
                                        }
                                        Spacer()
                                    }
                                    .padding(.trailing)
                                }
                                if sinopseis == true {
                                    VStack {
                                        HStack {
                                            Text(item.images[index].genre)
                                                .foregroundColor(.gray)
                                            Spacer()
                                        }
                                        HStack {
                                            Text(item.images[index].title)
                                                .foregroundColor(.white)
                                                .font(.title2)
                                            Spacer()
                                        }
                                        HStack {
                                            Text(item.images[index].sinopse)
                                                .foregroundColor(.gray)
                                                .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                    }
                                    //.frame(width: 170,height: 90)
                                    //.padding(.horizontal)
                                }
                            }
                        }
                        //.padding(.leading)
                    }
                    
                    .padding(.leading)
                    
                }
                
                //.padding(.leading)
                .padding(.bottom,24)
                
            }
            .background(
                Rectangle()
                    .fill(Gradient(colors: [.black.opacity(0), Color(red: 0.9, green: 0.9, blue: 0.9).opacity(0.1)]))
            )
        
    }

}





struct Scroller_Previews: PreviewProvider {
    static var previews: some View {
        ScrollHorizontal(title: "", top10is: false, subtitleis: false, sinopseis: false)
    }
}
