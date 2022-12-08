//
//  onboarding 9 .swift
//  sentech omboarding
//
//  Created by Houssam  on 22/09/2022.
//

import SwiftUI

struct onboarding_9_: View {
    var body: some View {
        
        ZStack {
            
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack {
                
            Image(systemName: "info.circle.fill")
                .resizable()
                .foregroundColor(Color("TextColor"))
                .aspectRatio(contentMode:.fit)
                .frame(width: 150, height: 100)
                .shadow(color: .black, radius: 10, x: 2, y: 2)

            Text(" N'aies pas peur, à tout instant tu peux accéder aux informations concernant l'interface en appuyant sur cette icône.")
                .font(.custom("SF-Pro-Rounded-Regular.otf", size: 30))
                .foregroundColor(Color("TextColor"))
                .multilineTextAlignment(.center)
                .padding(.top,34)
            }
            .padding()
    }   .navigationBarHidden(true)
        
  }
}

struct onboarding_9__Previews: PreviewProvider {
    static var previews: some View {
        onboarding_9_()
    }
}
