//
//  onboarding 7 .swift
//  sentech omboarding
//
//  Created by Houssam  on 21/09/2022.
//

import SwiftUI

struct onboarding_7_: View {
    var body: some View {
        ZStack {
Color("BackgroundColor")
                .ignoresSafeArea()
Rectangle()
                .frame(width: 390.0, height: 60.0)
                .padding(.bottom, 700.0)
                .foregroundColor(Color("TextColor"))
                .cornerRadius(40)
            VStack {
Text("Les exercices")
                    .font(.custom("SF-Pro-Rounded-Regular.otf", size: 50))
                    .fontWeight(.regular)
                    .foregroundColor(Color("BackgroundColor"))
                    .multilineTextAlignment(.center)
                    .padding()
Image("reponseexo")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 3000, height: 300)
                .padding(.bottom,390)
                .shadow(color: .black, radius: 10, x: 2, y: 2)
            }
                VStack {
                                                
Text("A chaque bonne ou mauvaise réponses une petite fenetre s'ouvrira pour soit te felicité si tu as bien répondu soit te corrigé si tu as fais une faute.")
                .font(.custom("SF-Pro-Rounded-Regular.otf", size: 28))
                .fontWeight(.regular)
                .foregroundColor(Color("TextColor"))
                .multilineTextAlignment(.center)
                .frame(width: 300, height: 300)
                .padding(.top,370)
                }
            }   .navigationBarHidden(true)
        }
    }

struct onboarding_7__Previews: PreviewProvider {
    static var previews: some View {
        onboarding_7_()
    }
}
