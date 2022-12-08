//
//  onboarding 10.swift
//  sentech omboarding
//
//  Created by Houssam  on 23/09/2022.
//

import SwiftUI

struct onboarding_10: View {
    var body: some View {
//        NavigationView{
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

                Text(" N'aies pas peur, à tout instant tu peux accéder aux informations concernant l'interface en appuyant sur cette icône.\n \n \r Une fois sollicitée, l'écran s'assombrit et il est possible de voir les  informations sur une fonction.")
                    .font(.custom("SF-Pro-Rounded-Regular.otf", size: 30))
                    .foregroundColor(Color("TextColor"))
                    .multilineTextAlignment(.center)
                    .padding(.top,34)

                VStack {
                    Text("")
                    .font(.custom("SF-Pro-Rounded-Regular.otf", size: 27))
                    .foregroundColor(Color("TextColor"))
                .multilineTextAlignment(.center)
                .padding(.bottom,25)
                    
//                    Button(action: {
//                        pageChangeWelcomeTwo = 2
//                    }) {
                        
//                        Text("CONTINUER")
//                            .fontWeight(.bold)
//                            .font(.title)
//                            .foregroundColor(Color("BackgroundColor"))
//                            .frame(width: 300, height: 100)
//                            .background(Color("TextColor"))
//                            .cornerRadius(15)
////                    }
                    
//                    NavigationLink(destination: WelcomeFile() ) {
//
//
//                    }
                }
                
                
                
                
            }
            .padding()
           
    }
        
        }
  }
//}

struct onboarding_10_Previews: PreviewProvider {
    static var previews: some View {
        onboarding_10()
    }
}
