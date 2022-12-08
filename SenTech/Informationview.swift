//
//  Informationview.swift
//  Sentech
//
//  Created by Luimar Cavani on 21/09/2022.
//

import SwiftUI



struct InformationView: View {
    @State private var isShowing: Bool = false
    @State private var isShowingNow: Bool = false
    @State private var animationAmount = 1.5
    @State private var alertePopup: Bool = false
    
    var body: some View {
        ZStack {
            Color("TextColor")
                .ignoresSafeArea()
            
            VStack{
                HStack(alignment:.top){
                    Spacer()
                    Button{
                        isShowing.toggle()
                        alertePopup.toggle()
                    }
                label: {
                    (Image(systemName: "info.circle.fill"))}
                .font(.system(size: 44))
                .foregroundColor(Color("BackgroundColor"))
                    
                    
                }.padding(.trailing, 50)
                    .alert(isPresented: $alertePopup){
                        Alert(title: Text("Le bouton retour vous permet de revenir à la page précédente."),
                              dismissButton: .default(Text("OK")))
                      
                    }
                Spacer()
            }
        }
        
        CardView(color: .gray)
            .offset(x: isShowing ? 0 : -500, y: 0)
        
        
        VStack{
            Button(action: {
                isShowingNow.toggle()
                self.alertePopup = true
            }, label: {
                if isShowing {
                    Text("<Retour")
                } else {
                    EmptyView()
                }
            })
//            .alert(isPresented: $alertePopup){
//                Alert(title: Text("Le bouton retour vous permet de revenir à la page précédente."),
//                      dismissButton: .default(Text("OK")))
//              
//            }
        }
        CardViewTwo(backgroundColor: .blue)
            .offset(x: isShowingNow ? 0 : -500, y: 0)
    }
    
    
    
    
    //            .font(.system(size: 30))
    //            .foregroundColor(.gray.opacity(0.01))
    //            .opacity(0.8)
    //            .padding()
    //            .frame(width: 400, height: 200)
    //            .offset(x: -100 ,y: -350)
    
    
}

struct CardView: View {
    var color: Color
    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .opacity(0.4)
            .ignoresSafeArea()
    }
}

struct CardViewTwo: View {
    var backgroundColor: Color
    var body: some View {
        Rectangle()
            .foregroundColor(backgroundColor)
        //            .opacity(0.4)
            .frame(width: 300,height: 200 )
            .cornerRadius(20)
        
            .overlay(
                Text("Le bouton retour vous permet de revenir à la page précédente.")
                    .foregroundColor(Color("TextColor"))
                    .font(.title))
            .position(x: 195, y: 200)
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
