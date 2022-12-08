//
//  onboarding 5 .swift
//  sentech omboarding
//
//  Created by Houssam  on 21/09/2022.
//

import SwiftUI

struct onboarding_5_: View {
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
Text("Les tutoriels")
                    .font(.custom("SF-Pro-Rounded-Regular.otf", size: 50))
                    .fontWeight(.regular)
                    .foregroundColor(Color("BackgroundColor"))
                    .multilineTextAlignment(.center)
                    .padding()
Image("tutoexemple")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 3000, height: 300)
                .padding(.bottom,390)
                .shadow(color: .black, radius: 10, x: 2, y: 2)
            }
                VStack {
                                                
Text("Il te permet d'apprendre ou de revoir une notion selon le theme que tu auras choisi.  ")
                                                
                .font(.custom("SF-Pro-Rounded-Regular.otf", size: 30))
                .fontWeight(.regular)
                .foregroundColor(Color("TextColor"))
                .multilineTextAlignment(.center)
                .frame(width: 300, height: 300)
                .padding(.top,320)
                }
            }   .navigationBarHidden(true)
        }
    }

struct onboarding_5__Previews: PreviewProvider {
    static var previews: some View {
        onboarding_5_()
    }
}
