//
//  Lexique - David.swift
//  SenTech
//
//  Created by Apprenant 75 on 23/09/2022.
//

import SwiftUI

struct Lexique___David: View {
    var body: some View {
            List(lexiqueList) {
            lexique in
                NavigationLink(destination: SwiperLexique()) {
                LexiqueView(lexique: lexique)
                }
            }.navigationTitle("Glossaire")
    }
}

struct Lexique___David_Previews: PreviewProvider {
    static var previews: some View {
        Lexique___David()
    }
}

struct LexiqueTheme: Identifiable {
    var id = UUID()
    var lexiqueName: String
}



struct LexiqueView: View {
    var lexique: LexiqueTheme
    
    var body: some View {
        VStack {
            Text(lexique.lexiqueName)
                    .fontWeight(.semibold)
            
        }
    }
}

let lexiqueList = [
LexiqueTheme(lexiqueName: "Scroller"),
LexiqueTheme(lexiqueName: "Swiper"),
LexiqueTheme(lexiqueName: "Arobase"),
LexiqueTheme(lexiqueName: "CC (dans un email)"),
LexiqueTheme(lexiqueName: "CCi"),
LexiqueTheme(lexiqueName: "PC"),
LexiqueTheme(lexiqueName: "Forwarder"),
LexiqueTheme(lexiqueName: "Liker"),
LexiqueTheme(lexiqueName: "Bluetooth"),
LexiqueTheme(lexiqueName: "Wifi"),
LexiqueTheme(lexiqueName: "Drag & Drop"),
LexiqueTheme(lexiqueName: "Géolocalisation"),
LexiqueTheme(lexiqueName: "Email"),
LexiqueTheme(lexiqueName: "IP"),
LexiqueTheme(lexiqueName: "JPEG"),
LexiqueTheme(lexiqueName: "Laptop"),
LexiqueTheme(lexiqueName: "Desktop"),
LexiqueTheme(lexiqueName: "Mailing list"),
LexiqueTheme(lexiqueName: "Navigateur"),
LexiqueTheme(lexiqueName: "Moteur de recherche"),
LexiqueTheme(lexiqueName: "Podcast"),
LexiqueTheme(lexiqueName: "Pop-up"),
LexiqueTheme(lexiqueName: "Screenshot"),
LexiqueTheme(lexiqueName: "Spam"),
LexiqueTheme(lexiqueName: "Streaming"),
LexiqueTheme(lexiqueName: "Hashtag"),
LexiqueTheme(lexiqueName: "URL"),
LexiqueTheme(lexiqueName: "Wiki")
]
