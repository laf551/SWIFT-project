//
//  WelcomeFile2.swift
//  ProjectName
//
//  Created by Apprenant 61 on 21/09/2022.
//

import SwiftUI

struct WelcomeFile2: View{
    @Binding var changePageWelcomeTwo: Int
    @Binding var username: String
    @State private var  isAppear = true
    @State private var showNextView = false
    
    //    var user : String = ""
    var body: some View {
        //SwiftUIView(name: "3VQL")
        VStack{
            
            ZStack{
                
                Color("BackgroundColor").ignoresSafeArea()
                
                VStack{
                    Image("Felicitations")
                        .resizable()
                        .frame(width: 350, height: 300)
                    Text("Bonjour \(username)!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                        //Spacer()
//                        SwiftUIView(name: "Bravo")
                    
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                    Image("ClapClap")
                        .resizable()
                        .frame(width: 300, height: 300)

                    
                    VStack{
                            
                        //Color("BackgroundColor")
                        
                    }//.padding(.leading , 85)
                    
                }
                
                
//                NavigationLink(destination: Theme_Apprentissage___David(), isActive: $showNextView) {
//                    EmptyView()
//                }
                
                
            }
        }
        .foregroundColor(.white)
        .onAppear {
            Disparition()
        }
    }
    func Disparition() -> Bool{
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            if self.isAppear == true {
                self.isAppear = false
                if isAppear == false {
                    changePageWelcomeTwo = 2
//                    showNextView.toggle()
                }
            }
            
            //self.isActive = true
        }
        return self.isAppear
    }
}

struct WelcomeFile2_Previews: PreviewProvider {
    var usr : String = ""
    static var previews: some View {
        
        WelcomeFile2(changePageWelcomeTwo: .constant(2), username: .constant("Toto"))
    }
}
