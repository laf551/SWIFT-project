//
//  Theme Apprentissage - David.swift
//  SenTech
//
//  Created by Apprenant 75 on 20/09/2022.
//

import SwiftUI

struct Theme_Apprentissage___David: View {
    let themeList = [
        MainTheme(themeName: "ADMINISTRATIF", isChosen: false, themeColor: "BackgroundColor"),
        MainTheme(themeName: "BUREAUTIQUE", isChosen: false, themeColor: "BackgroundColor"),
        MainTheme(themeName: "RESEAUX SOCIAUX", isChosen: false, themeColor: "BackgroundColor"),
        MainTheme(themeName: "LOISIRS", isChosen: false, themeColor: "BackgroundColor"),
        MainTheme(themeName: "INTERNET", isChosen: false, themeColor: "BackgroundColor"),
        
    ]
    var body: some View {
        NavigationView {
            ZStack{
                Color("TextColor")
                    .ignoresSafeArea()
                VStack {
                                        Text("Choix du thème")
                                          .font(.title)
                                          .fontWeight(.bold)
                                          .foregroundColor(Color("BackgroundColor"))
                                          .padding(.bottom,30)
                    ForEach(themeList) {theme in
                        NavigationLink(destination: page_administratif___David()) {
                            MainThemeView(theme: theme)
                        }
                    }
                    NavigationLink(destination:Lexique___David()){
                        Text("GLOSSAIRE")
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(width: 300, height: 50)
                            .padding()
                            .foregroundColor(Color("TextColor"))
                            .background(Color("ButtonQuizColor"))
                            .cornerRadius(40)
                    }
                }
                .toolbar { ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action:{
                      //      isShowing.toggle()
                        }) {
                        Image(systemName: "info.circle.fill")
                        
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color("BackgroundColor"))
                        
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct Theme_Apprentissage___David_Previews: PreviewProvider {
    static var previews: some View {
        Theme_Apprentissage___David()
    }
}

struct MainTheme: Identifiable {
    var id = UUID()
    var themeName: String
    var isChosen: Bool
    var themeColor: String
}

struct MainThemeView: View {
    var theme : MainTheme
    
    var body: some View {
        NavigationLink(destination:page_administratif___David()){
            Text(theme.themeName)
                .font(.title)
                .fontWeight(.bold)
                .frame(width: 300, height: 50)
                .padding()
                .foregroundColor(Color("TextColor"))
                .background(Color(theme.themeColor))
                .cornerRadius(40)
        }
    }
}

}

