//
//  ScrollerLexique.swift
//  SenTech
//
//  Created by Apprenant 75 on 23/09/2022.
//

import SwiftUI

struct ScrollerLexique: View {
    var body: some View {
        
        ZStack {
            Color("TextColor")
                .ignoresSafeArea()
            DefinitionView()
        }
    }
}

struct ScrollerLexique_Previews: PreviewProvider {
    static var previews: some View {
        ScrollerLexique()
    }
}

struct DefinitionView: View {
    var body: some View {
        VStack {
            Text("Scroller")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 60)
            Text("Définition")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            ScrollView{
                Text("Anglicisme,verbe intransitif. \r Vient de ‘‘to scroll’’ qui signifie ‘‘faire défiler’’ en français. \n \n Action qui consiste à faire défiler le contenu d'une page sur un écran  à l'aide d'un doigt, d'une souris ou d'un pavé tactile. ")
                    .font(.title)
                    
            }
        }
    }
}
