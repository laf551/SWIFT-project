//
//  onboarding 1 .swift
//  sentech omboarding
//
//  Created by Houssam  on 20/09/2022.
//

import SwiftUI

struct onboarding_1_: View {
    var body: some View {
        ZStack {
Color("BackgroundColor")
                .ignoresSafeArea()

            
            VStack {
                ZStack{
                    Rectangle()
                        .frame(width: 290.0, height: 80.0)
                        .foregroundColor(Color("TextColor"))
                        .cornerRadius(55)
                        .padding(.top, 40)
                    
                    Text("Bienvenue")
                        .font(.custom("SF-Pro-Rounded-Bold.otf", size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(Color("BackgroundColor"))
                        .padding(.top, 40)
                          }
//                .foregroundColor(Color("BackgroundColor"))
//                                .multilineTextAlignment(.center)
//                //                .padding(.bottom,700)
                
Text("Sentech te mettra à l'aise avec l'informatique au travers de leçons et d'exercices.\r\rAlors, prêt à devenir le nouveau maître de la tech ? \r\r Premiere leçon : LE SWIPE !\r\r Fait glisser ton index de droite à gauche pour passer à la page suivante.")
                    .font(.custom("SF-Pro-Rounded-Regular.otf", size: 28))
                    .foregroundColor(Color("TextColor"))
                    .multilineTextAlignment(.center)
                    .padding(.top,30)
Image("swipe photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                
            }
            .padding()

        }
        
        .navigationBarHidden(true)
    }
}

//struct PageIndicator: View {
//    let numPages : Int
//    @State var currentPage : Int
//    let size : CGFloat = 14
//    let distance : CGFloat = 10

//    var body: some View {
//        HStack {
//            ForEach(0 ..< numPages) { index in
//                Circle()
//                    .foregroundColor(currentPage < 0 ? Color("BackgroundColor") : currentPage == index + 1 ? Color("TextColor") : Color("ColorForeground"))
//                    .frame(width: size, height: size)
//                    .padding(.top,56)
//        }
//    }
//}
struct onboarding_1__Previews: PreviewProvider {
    static var previews: some View {
        onboarding_1_()
    }
}
    


