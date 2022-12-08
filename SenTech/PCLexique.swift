//
//  PCLexique.swift
//  SenTech
//
//  Created by Apprenant 75 on 23/09/2022.
//

import SwiftUI

struct PCLexique: View {
    var body: some View {
        ZStack {
                    Color("TextColor")
                        .ignoresSafeArea()
                    VStack {
                        Text("PC")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 60)
                        Text("Définition")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.bottom, 40)
                        ScrollView{
                            Text("Nom masculin anglais. \r Abréviation pour ‘‘personal compurer’’, soit un ordinateur personnel.\n \nOrdinateur personnel à fiable coût et dont les dimensions sont assez petites pour être disposés sur un bureau.")
                                .font(.title)
                                
                        }
                    }
                }
    }
}

struct PCLexique_Previews: PreviewProvider {
    static var previews: some View {
        PCLexique()
    }
}
