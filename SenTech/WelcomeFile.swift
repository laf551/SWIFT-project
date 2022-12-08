//
//  WelcomeFile.swift
//  ProjectName
//
//  Created by Apprenant 61 on 20/09/2022.
//

import SwiftUI
import Foundation

struct WelcomeFile: View {
    @Binding var pageChangeWelcomeOne: Int
    @Binding var userName : String
    @State private var  error : String = ""
    @State private var  errorAlert = false
    @State private var correct = false
    
    
    var body: some View {
        
        let autre : [String] = ["1","2","3","4","5","6","7","8","9","0","-","_",
                                ",",";",".","%","$","/"]
        
            
            ZStack{
                Color("BackgroundColor").ignoresSafeArea()
                
                //VStack{
                    
                    VStack {
                        Text("Avant de commencer, pourrais-tu me dire ton prénom?")
                            .foregroundColor(Color("TextColor"))
                            .font(.largeTitle)
                        
                        TextField("Touchez ici", text: $userName)
                            .foregroundColor(.gray)
                            .disableAutocorrection(true)
                            .padding()
                            .font(.largeTitle)
                            .textFieldStyle(.roundedBorder)
                            .frame(width : 380)
                            .padding()
                 
                        
                        Button("Valider"){
                            
                            correct.toggle()
                            if correct {
                                pageChangeWelcomeOne = 1
                            }

                            error = ""
                            if userName .isEmpty{
                                error = "Vous n'avez rien saisie"
                            }
                            else{
                        
                                for lettre in userName {

                                    if lettre .isNumber{
                                        error = "Il faut saisir que des lettres et non des chiffres"

                                        self.errorAlert = true
                                    }
                                    else if  lettre .isSymbol {
                                        error = "Il faut saisir que des lettres et non des symbols"
                                        self.errorAlert = true

                                    }
                                    else if autre.contains(String(lettre)) {
                                        error = "Saisi incorrecte"
                                        self.errorAlert = true
                                    }
                                    

                                }

                            }
                        }
                        .frame(width:270, height: 75)
                            .background(Color("TextColor"))
                            .foregroundColor(Color("BackgroundColor"))
                            .font(.title)
                            .cornerRadius(20)
                        
                            .alert(isPresented: $errorAlert){
                                Alert(title: Text(error))
                                
                                
                            }
                        
                        
                            .font(.largeTitle)
                            .textFieldStyle(.roundedBorder)
                        
                            .frame(width : 300)
                            .padding()
//                        NavigationLink(destination: WelcomeFile2(username: $userName), isActive: $correct) {
//                            EmptyView()
//                        }
                     
                    }
               
            }
        }
    }

struct WelcomeFile_Previews: PreviewProvider {
    //@Binding var usernamer: String
    static var previews: some View {
        WelcomeFile( pageChangeWelcomeOne: .constant(0), userName: .constant("Toto"))
    }
}

