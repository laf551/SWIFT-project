//
//  CCemailLexique.swift
//  SenTech
//
//  Created by Apprenant 75 on 23/09/2022.
//

import SwiftUI

struct CCemailLexique: View {
    var body: some View {
        ZStack {
            Color("TextColor")
                .ignoresSafeArea()
            VStack {
                Text("Cc (dans un e-mail)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 60)
                Text("Définition")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                ScrollView{
                    Text("Abréviation de ‘‘copie carbone’’. \rChamp de saisie d'une adresse mail pour distinguer les destinataires principaux des destinataires secondaires. Dans ce champs, vous rentrez l'adresse mail des personnes que vous souhaitez mettre dans la correspondance sans pour autant attendre une réponse de leur part.\n \nLes destinataires du mail pourront voir les personnes comprises dans la copie carbone.")
                        .font(.title)
                }
            }
        }
    }
}

struct CCemailLexique_Previews: PreviewProvider {
    static var previews: some View {
        CCemailLexique()
    }
}
