//
//  LikeLexique.swift
//  SenTech
//
//  Created by Apprenant 75 on 26/09/2022.
//

import SwiftUI

struct LikeLexique: View {
    var body: some View {
        ZStack {
            Color("TextColor")
                .ignoresSafeArea()
            VStack {
                Text("Like")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 60)
                    .foregroundColor(Color("BackgroundColor"))
                Text("Définition")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                    .foregroundColor(Color("BackgroundColor"))
                ScrollView{
                    Text(" Anglicisme. \r Vient de ‘‘arroba’’, une unité de mesure utilisée en Espagne et en Amérique du Sud. \n \nCaractère typographique @, utilisé dans les adresses de courrier électronique comme séparateur entre le nom de l'utilisateur et le nom de domaine de la messagerie.")
                        .font(.title)
                        .foregroundColor(Color("BackgroundColor"))
                        
                }
            }
        }
    }
}

struct LikeLexique_Previews: PreviewProvider {
    static var previews: some View {
        LikeLexique()
    }
}
