//
//  onboarding 4.swift
//  sentech omboarding
//
//  Created by Houssam  on 21/09/2022.
//

import SwiftUI

struct onboarding_4: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack {
Image("themeIcon")
                .resizable()
                .cornerRadius(25)
                .aspectRatio(contentMode:.fit)
                .frame(width: 300, height: 300)
                .shadow(color: .black, radius: 10, x: 2, y: 2)
                                
Text("Une fois un thème selectionné, tu peux choisir entre les tutoriels ou les quiz.")
                .font(.custom("SF-Pro-Rounded-Regular.otf", size: 28))
                .fontWeight(.regular)
                .foregroundColor(Color("TextColor"))
                .multilineTextAlignment(.center)
                .frame(width: 300, height: 300)
            }
        }   .navigationBarHidden(true)
    }
}

struct onboarding_4_Previews: PreviewProvider {
    static var previews: some View {
        onboarding_4()
    }
}
