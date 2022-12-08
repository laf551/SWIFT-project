//
//  ContentView.swift
//  SenTech
//
//  Created by Apprenant 75 on 20/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var pageChange = -1
    @State private var username = ""
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("BackgroundColor"))
    }
    
    var body: some View {
        
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            if pageChange == -1 {
                onboarding_0(pageChangeOnboarding: $pageChange)
            } else if pageChange == 0 {
                TabView {
                   
                    Group{
                        
                        onboarding_1_()
                        onboarding_2()
                        onboarding_3()
                        onboarding_4()
                        onboarding_10()
                    }
                    
                    Group{
                        WelcomeFile(pageChangeWelcomeOne: $pageChange, userName: $username)
                        //                        Theme_Apprentissage___David()
                        
                    }
                }.tabViewStyle(.page(indexDisplayMode: .always))
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                    .ignoresSafeArea()
            } else if pageChange == 1 {
                WelcomeFile2(changePageWelcomeTwo: $pageChange, username: $username)
            } else {
                Theme_Apprentissage___David()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
            .previewDevice("iPhone 12")
    }
}
