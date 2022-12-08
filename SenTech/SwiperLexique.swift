//
//  SwiperLexique.swift
//  SenTech
//
//  Created by Apprenant 75 on 23/09/2022.
//

import SwiftUI

struct SwiperLexique: View {
    var body: some View {
        ZStack {
            Color("TextColor")
                .ignoresSafeArea()
            VStack {
                Text("Swiper")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 60)
                    .foregroundColor(Color("BackgroundColor"))
                Text("Définition")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                ScrollView{
                    Text("Anglicisme,verbe intransitif. \rVient de ‘‘to swipe’’ qui signifie ‘‘donner un coup’’ en français, dans le sens de toucher. \n \nDémarche visant à déplacer son doigt sur un écran tactile pour provoquer une action. Le plus souvent, on ‘‘swipe’’ latéralement, pour passer d'une page à une autre.")
                        .font(.title)
                        
                }
            }
            .padding(.horizontal)
        }
    }
}

struct SwiperLexique_Previews: PreviewProvider {
    static var previews: some View {
        SwiperLexique()
    }
}
