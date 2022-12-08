//
//  onboarding 2.swift
//  sentech omboarding
//
//  Created by Houssam  on 21/09/2022.
//

import SwiftUI

struct onboarding_2: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack{
Text("Bravo tu as \r reussi le \r SWIPE !")
                    .font(.custom("SF-Pro-Rounded-Regular.otf", size: 44))
                    .fontWeight(.regular)
                    .foregroundColor(Color("TextColor"))
                    .multilineTextAlignment(.center)
                
Text("\r\r Avant de te lancer, voyons comment fonctionne l'application \r\r Swipe à nouveau !")
                .font(.custom("SF-Pro-Rounded-Regular.otf", size: 28))
                .fontWeight(.regular)
                .foregroundColor(Color("TextColor"))
                .multilineTextAlignment(.center)
            }
            .padding()
            .navigationBarHidden(true)
    }
}

struct onboarding_2_Previews: PreviewProvider {
    static var previews: some View {
        onboarding_2()
    }
}
}

