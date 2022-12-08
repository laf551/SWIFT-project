//
//  ForwardLexique.swift
//  SenTech
//
//  Created by Apprenant 75 on 26/09/2022.
//

import SwiftUI

struct ForwardLexique: View {
    var body: some View {
        ZStack {
            Color("TextColor")
                .ignoresSafeArea()
            VStack {
                Text("Forwarder")
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
                    Text("Verbe transitif du 1er groupe. \r Anglicisme provenant de ‘‘forward’’, qui signifie ‘‘aller de l'avant’’ en français. \n \nOn utilise forwarder pour parler de la transmission d'un e-mail. Dans ce contexte, forwarder prend le sens de retransmettre, de faire suivre une information.")
                        .font(.title)
                        .foregroundColor(Color("BackgroundColor"))
                        
                }
            }
        }
    }
}

struct ForwardLexique_Previews: PreviewProvider {
    static var previews: some View {
        ForwardLexique()
    }
}
