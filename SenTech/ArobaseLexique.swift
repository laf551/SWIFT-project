//
//  ArobaseLexique.swift
//  SenTech
//
//  Created by Apprenant 75 on 23/09/2022.
//

import SwiftUI

struct ArobaseLexique: View {
    var body: some View {
        ZStack {
            Color("TextColor")
                .ignoresSafeArea()
            VStack {
                Text("Arobase")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 60)
                Text("Définition")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                ScrollView{
                    Text("Nom féminin espagnol. \r Vient de ‘‘arroba’’, une unité de mesure utilisée en Espagne et en Amérique du Sud. \n \nCaractère typographique @, utilisé dans les adresses de courrier électronique comme séparateir entre le nom de l'utilisateur et le nom de domaine de la messagerie.")
                        .font(.title)
                        
                }
            }
        }
    }
}

struct ArobaseLexique_Previews: PreviewProvider {
    static var previews: some View {
        ArobaseLexique()
    }
}
