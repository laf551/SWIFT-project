//
//  onboarding 3.swift
//  sentech omboarding
//
//  Created by Houssam  on 21/09/2022.
//

import SwiftUI

struct onboarding_3: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
//            Rectangle()
//                .frame(width: 390.0, height: 60.0)
//                .padding(.bottom, 700.0)
//                .foregroundColor(Color("TextColor"))
//                .cornerRadius(40)
            VStack{
//                ZStack{
//                    Rectangle()
//
//                        .frame(width: 290.0, height: 60.0)
//                    //                .padding(.bottom, 700.0)
//                        .foregroundColor(Color("TextColor"))
//                        .cornerRadius(30)
//
//                    Text("T")
//                        .font(.custom("SF-Pro-Rounded-Bold.otf", size: 50))
//                        .fontWeight(.bold)
//                        .foregroundColor(Color("BackgroundColor"))
//                          }
//Text("L'interface")
//                    .font(.custom("SF-Pro-Rounded-Regular.otf", size: 50))
//                    .fontWeight(.regular)
//                    .foregroundColor(Color("BackgroundColor"))
//                    .multilineTextAlignment(.center)
//                    .padding(.top,30)
Image("themeInterfaceMini")
                     .resizable()
                     .cornerRadius(30)
                     .aspectRatio(contentMode:.fit)
                     .frame(width: 400, height: 422)
                     .padding(.top,105)
                     .shadow(color: .black, radius: 10, x: 2, y: 2)
                
Text("Une fois l'application lancée, tu arrives sur les thèmes. \rIci,  tu peux choisir différents sujets. \r \n En bas, tu trouveras un lexique.")
                
                    .font(.custom("SF-Pro-Rounded-Regular.otf", size: 28))
                    .fontWeight(.regular)
                    .foregroundColor(Color("TextColor"))
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 300)
                    .padding(.bottom,80)
            }
            
        }   .navigationBarHidden(true)
    }
}
struct onboarding_3_Previews: PreviewProvider {
    static var previews: some View {
        onboarding_3()
    }
}
    
