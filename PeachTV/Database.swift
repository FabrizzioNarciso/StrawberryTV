//
//  Images.swift
//  PearTV
//
//  Created by Anderson  Vulto on 24/05/23.
//

import SwiftUI

struct MidiaData: Hashable {
    var HimageRef: String
    var VimageRef: String
    var title: String
    var genre: String
    var classificacao: String
    var sinopse: String
    var video: String
    var time: String = ""
    var year: String = ""
    
}

class Images: ObservableObject {
    @Published var images:[MidiaData] = [MidiaData(HimageRef: "h1",
                                                   VimageRef: "v1",
                                                   title: "Vermelho",
                                                   genre: "Animação",
                                                   classificacao: "10",
                                                   sinopse: "Cursus mattis molestie a iaculis at erat pellentesque adipiscing. Suspendisse faucibus interdum posuere lorem ipsum dolor sit. ",
                                                   video:"vv1",
                                                   time: "30min",
                                                   year: "2008"),
                                         
                                         MidiaData(HimageRef: "h2",
                                                   VimageRef: "v2",
                                                   title: "Amarelo",
                                                   genre: "Drama",
                                                   classificacao: "12",
                                                   sinopse: "buydcfgyadsginfucgsuyfbciasndfudagsucfdmks roiofierhgeir roefjirejgoirejg eigjoerigoiergiogf",
                                                   video:"vv2",
                                                   time: "37min",
                                                   year: "2009"),
                                         
                                         MidiaData(HimageRef: "h3",
                                                   VimageRef: "v3",
                                                   title: "Verde",
                                                   genre: "Ação",
                                                   classificacao: "16",
                                                   sinopse: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque habitant morbi tristique senectus et netus.",
                                                   video: "vv3",
                                                   time: "27min",
                                                   year: "2013"),
                                         
                                         MidiaData(HimageRef: "h4",
                                                   VimageRef: "v4",
                                                   title: "Ciano",
                                                   genre: "Aventura",
                                                   classificacao: "12",
                                                   sinopse: "Velit ut tortor pretium viverra suspendisse potenti nullam ac tortor. Quis lectus nulla at volutpat diam ut venenatis tellus in.",
                                                   video: "vv4",
                                                   time: "44min",
                                                   year: "2015"),
                                         
                                         MidiaData(HimageRef: "h5",
                                                   VimageRef: "v5",
                                                   title: "Azul",
                                                   genre: "Comédia", classificacao: "6",
                                                   sinopse: "Porttitor leo a diam sollicitudin tempor id eu. Metus dictum at tempor commodo ullamcorper a lacus vestibulum.",
                                                   video: "vv5",
                                                   time: "44min",
                                                   year: "2019"),
                                         
                                         MidiaData(HimageRef: "h6",
                                                   VimageRef: "v6",
                                                   title: "Rosa",
                                                   genre: "Documentário",
                                                   classificacao: "14",
                                                   sinopse: "Venenatis urna cursus eget nunc scelerisque viverra mauris.",
                                                   video: "vv6",
                                                   time: "15min",
                                                   year: "2022"),
                                         MidiaData(HimageRef: "h1",
                                                   VimageRef: "v1",
                                                   title: "Vermelho",
                                                   genre: "Animação",
                                                   classificacao: "10",
                                                   sinopse: "Cursus mattis molestie a iaculis at erat pellentesque adipiscing. Suspendisse faucibus interdum posuere lorem ipsum dolor sit. ",
                                                   video:"vv1",
                                                   time: "30min",
                                                   year: "2008"),
                                         
                                         MidiaData(HimageRef: "h2",
                                                   VimageRef: "v2",
                                                   title: "Amarelo",
                                                   genre: "Drama",
                                                   classificacao: "12",
                                                   sinopse: "buydcfgyadsginfucgsuyfbciasndfudagsucfdmks roiofierhgeir roefjirejgoirejg eigjoerigoiergiogf",
                                                   video:"vv2",
                                                   time: "37min",
                                                   year: "2009"),
                                         
                                         MidiaData(HimageRef: "h3",
                                                   VimageRef: "v3",
                                                   title: "Verde",
                                                   genre: "Ação",
                                                   classificacao: "16",
                                                   sinopse: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque habitant morbi tristique senectus et netus.",
                                                   video: "vv3",
                                                   time: "27min",
                                                   year: "2013"),
                                         
                                         MidiaData(HimageRef: "h4",
                                                   VimageRef: "v4",
                                                   title: "Ciano",
                                                   genre: "Aventura",
                                                   classificacao: "12",
                                                   sinopse: "Velit ut tortor pretium viverra suspendisse potenti nullam ac tortor. Quis lectus nulla at volutpat diam ut venenatis tellus in.",
                                                   video: "vv4",
                                                   time: "44min",
                                                   year: "2015"),
                                         
                                         MidiaData(HimageRef: "h5",
                                                   VimageRef: "v5",
                                                   title: "Azul",
                                                   genre: "Comédia", classificacao: "6",
                                                   sinopse: "Porttitor leo a diam sollicitudin tempor id eu. Metus dictum at tempor commodo ullamcorper a lacus vestibulum.",
                                                   video: "vv5",
                                                   time: "44min",
                                                   year: "2019"),
                                         
                                         MidiaData(HimageRef: "h6",
                                                   VimageRef: "v6",
                                                   title: "Rosa",
                                                   genre: "Documentário",
                                                   classificacao: "14",
                                                   sinopse: "Venenatis urna cursus eget nunc scelerisque viverra mauris.",
                                                   video: "vv6",
                                                   time: "15min",
                                                   year: "2022"),
                                         MidiaData(HimageRef: "h1",
                                                   VimageRef: "v1",
                                                   title: "Vermelho",
                                                   genre: "Animação",
                                                   classificacao: "10",
                                                   sinopse: "Cursus mattis molestie a iaculis at erat pellentesque adipiscing. Suspendisse faucibus interdum posuere lorem ipsum dolor sit. ",
                                                   video:"vv1",
                                                   time: "30min",
                                                   year: "2008"),
                                         
                                         MidiaData(HimageRef: "h2",
                                                   VimageRef: "v2",
                                                   title: "Amarelo",
                                                   genre: "Drama",
                                                   classificacao: "12",
                                                   sinopse: "buydcfgyadsginfucgsuyfbciasndfudagsucfdmks roiofierhgeir roefjirejgoirejg eigjoerigoiergiogf",
                                                   video:"vv2",
                                                   time: "37min",
                                                   year: "2009"),
                                         
                                         MidiaData(HimageRef: "h3",
                                                   VimageRef: "v3",
                                                   title: "Verde",
                                                   genre: "Ação",
                                                   classificacao: "16",
                                                   sinopse: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque habitant morbi tristique senectus et netus.",
                                                   video: "vv3",
                                                   time: "27min",
                                                   year: "2013"),
                                         
                                         MidiaData(HimageRef: "h4",
                                                   VimageRef: "v4",
                                                   title: "Ciano",
                                                   genre: "Aventura",
                                                   classificacao: "12",
                                                   sinopse: "Velit ut tortor pretium viverra suspendisse potenti nullam ac tortor. Quis lectus nulla at volutpat diam ut venenatis tellus in.",
                                                   video: "vv4",
                                                   time: "44min",
                                                   year: "2015"),
                                         
                                         MidiaData(HimageRef: "h5",
                                                   VimageRef: "v5",
                                                   title: "Azul",
                                                   genre: "Comédia", classificacao: "6",
                                                   sinopse: "Porttitor leo a diam sollicitudin tempor id eu. Metus dictum at tempor commodo ullamcorper a lacus vestibulum.",
                                                   video: "vv5",
                                                   time: "44min",
                                                   year: "2019"),
                                         
                                         MidiaData(HimageRef: "h6",
                                                   VimageRef: "v6",
                                                   title: "Rosa",
                                                   genre: "Documentário",
                                                   classificacao: "14",
                                                   sinopse: "Venenatis urna cursus eget nunc scelerisque viverra mauris.",
                                                   video: "vv6",
                                                   time: "15min",
                                                   year: "2022")]
    
}



