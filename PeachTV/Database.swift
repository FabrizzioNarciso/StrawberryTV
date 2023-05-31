//
//  Images.swift
//  PearTV
//
//  Created by Anderson  Vulto on 24/05/23.
//

import SwiftUI

struct MidiaData: Hashable {
    var imageRef: String
    var title: String
    var genre: String
    var classificacao: String
    var sinopse: String
    var video: String = ""
    var ext: String = ""
    
}

class Images: ObservableObject {
    @Published var images:[MidiaData] = [MidiaData(imageRef: "felca",
                                                   title: "Felca la creatura",
                                                   genre: "Animação",
                                                   classificacao: "10",
                                                   sinopse: "Cursus mattis molestie a iaculis at erat pellentesque adipiscing. Suspendisse faucibus interdum posuere lorem ipsum dolor sit. ",
                                                   video:"felca"),
                                         
                                         MidiaData(imageRef: "raluca",
                                                   title: "Putz, Raluca",
                                                   genre: "Drama",
                                                   classificacao: "12",
                                                   sinopse: "buydcfgyadsginfucgsuyfbciasndfudagsucfdmks roiofierhgeir roefjirejgoirejg eigjoerigoiergiogf",
                                                   video:"raluca"),
                                         
                                         MidiaData(imageRef: "bigblue",
                                                   title: "Bluezão 2",
                                                   genre: "Ação",
                                                   classificacao: "16",
                                                   sinopse: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque habitant morbi tristique senectus et netus.",
                                                   video: "bluezao"),
                                         
                                         MidiaData(imageRef: "zoio",
                                                   title: "Aventuras de Zoio",
                                                   genre: "Aventura",
                                                   classificacao: "12",
                                                   sinopse: "Velit ut tortor pretium viverra suspendisse potenti nullam ac tortor. Quis lectus nulla at volutpat diam ut venenatis tellus in."),
                                         
                                         MidiaData(imageRef: "manoel",
                                                   title: "Caneta azul, azul caneta",
                                                   genre: "Comédia", classificacao: "6",
                                                   sinopse: "Porttitor leo a diam sollicitudin tempor id eu. Metus dictum at tempor commodo ullamcorper a lacus vestibulum."),
                                         
                                         MidiaData(imageRef: "carioca",
                                                   title: "Economizando a vida",
                                                   genre: "Documentário",
                                                   classificacao: "14",
                                                   sinopse: "Venenatis urna cursus eget nunc scelerisque viverra mauris."),
                                         
                                         MidiaData(imageRef: "caba",
                                                   title: "Como se fosse a última vez",
                                                   genre: "Romance",
                                                   classificacao: "12",
                                                   sinopse: "Nulla at volutpat diam ut venenatis. Pellentesque adipiscing commodo elit at imperdiet dui."),
                                         
                                         MidiaData(imageRef: "nomark",
                                                   title: "O Lobo de Alphaville",
                                                   genre: "Ficção Científica",
                                                   classificacao: "16",
                                                   sinopse: "Nulla malesuada pellentesque elit eget gravida cum sociis natoque. Ornare aenean euismod elementum nisi quis eleifend."),
                                         
                                         MidiaData(imageRef: "filo",
                                                   title: "Capivara e eu",
                                                   genre: "Infantil e família",
                                                   classificacao: "8",
                                                   sinopse: "Aenean pharetra magna ac placerat vestibulum lectus. Facilisi morbi tempus iaculis urna. Et netus et malesuada fames ac turpis egestas. Etiam erat velit scelerisque in."),
                                         
                                         MidiaData(imageRef: "pombo",
                                                   title: "Atividade normal",
                                                   genre: "Terror",
                                                   classificacao: "16",
                                                   sinopse: "Consectetur libero id faucibus nisl tincidunt eget nullam non nisi. A diam sollicitudin tempor id eu. Erat pellentesque adipiscing commodo elit at imperdiet dui accumsan."),
                                         
                                         MidiaData(imageRef: "seila",
                                                   title: "O retorno de quem já esteve aqui",
                                                   genre: "Indie",
                                                   classificacao: "10",
                                                   sinopse: "Ultricies tristique nulla aliquet enim tortor at auctor urna. Faucibus purus in massa tempor nec. Nec dui nunc mattis enim ut tellus elementum sagittis.")]

}



