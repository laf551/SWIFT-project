//
//  onboarding 8 .swift
//  sentech omboarding
//
//  Created by Houssam  on 21/09/2022.
//

import SwiftUI

struct onboarding_8_: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            Image("retourphoto")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 200, height: 100)
                .padding(.bottom,210)
                .shadow(color: .black, radius: 10, x: 2, y: 2)
            VStack {
Text("Il te permet de retourner rapidement à la page précédente.")
                .font(.custom("SF-Pro-Rounded-Regular.otf", size: 30))
                .foregroundColor(Color("TextColor"))
                .multilineTextAlignment(.center)
                .padding(.top,70)
        }
            .padding()
        }   .navigationBarHidden(true)
    }
}

struct onboarding_8__Previews: PreviewProvider {
    static var previews: some View {
        onboarding_8_()
    }
}
