//
//  onboarding 0.swift
//  sentech omboarding
//
//  Created by Houssam  on 21/09/2022.
//

import SwiftUI

struct onboarding_0: View {
    @Binding var pageChangeOnboarding: Int
    @State private var isActive = false
    @State private var size = 3.8
    @State private var opacity = 0.5
    
    var body: some View {
//        if isActive {
//        Navigation()
//        } else {
            ZStack {
                Color("BackgroundColor")
                                .ignoresSafeArea()
                VStack {
                    Image("Logo")
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(width: 200, height: 200)
                         .padding()
                        
            }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                    pageChangeOnboarding = 0
                }
                
        }
      
            
//        }
      }
    }
    
    
struct onboarding_0_Previews: PreviewProvider {
    static var previews: some View {
        onboarding_0(pageChangeOnboarding: .constant(0))
    }
}
