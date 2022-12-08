//
//  page administratif - David.swift
//  SenTech
//
//  Created by Apprenant 75 on 21/09/2022.
//

import SwiftUI

struct page_administratif___David: View {
    @State private var alertePopup = false
    @State private var isShowing: Bool = false
    @State private var isShowingNow: Bool = false
    @State private var animationAmount = 1.5
    var body: some View {
        ZStack{
            Color("TextColor")
                .ignoresSafeArea()
            ScrollView {
   
                VStack(alignment: .leading) {
                    Text("ADMINISTRATIF")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("BackgroundColor"))
                        .offset(x: 90)
                    
                    ForEach(topicList) {topic in
                        TopicView(newTopic: topic)
                    }.foregroundColor(Color("BackgroundColor"))
                    
                }
                .padding(.horizontal)
            }
            CardView(color: .gray)
                .offset(x: isShowing ? 0 : -500, y: 0)
            
            VStack{
                Button(action: {
                    
                    alertePopup.toggle()
                }, label: {
                        if isShowing {
                            Text("<Retour")
                        } else {
                           Text("TOTO")
                        }
                    })
                .font(.system(size: 30))
                .foregroundColor(.gray.opacity(0.01))
                .opacity(0.8)
                .padding()
                .frame(width: 400, height: 200)
                .offset(x: 0 ,y: -300)
                .alert(isPresented: $alertePopup){
                    Alert(title: Text("Le bouton retour vous permet de revenir à la page précédente."),
                          dismissButton: .default(Text("OK")))
                  
                }
            }
            CardViewTwo(backgroundColor: .blue)
                .offset(x: isShowingNow ? 0 : -500, y: 0)
            
            
            
        }
        .toolbar { ToolbarItem(placement: .navigationBarTrailing) {
            
                Button{
                    isShowing.toggle()
                }
            label: {
                (Image(systemName: "info.circle.fill"))}
            .font(.system(size: 30))
            .foregroundColor(Color("BackgroundColor"))
               
        }
        }
        
    }
    
}

struct TopicView: View {
    var newTopic: Topic
    
    var body: some View {
        VStack {
            HStack {
                
                
                VStack(alignment: .leading){
                    
                    HStack {
                        Spacer()
                        
                        Image(newTopic.topicImage)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .cornerRadius(25)
                            .shadow(color: .black, radius: 3)
                        Spacer()
                        Text(newTopic.topicTitle)
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        
                    }
                    HStack {
                        
                        Spacer()
                        
                        NavigationLink(destination: tuto_email___David()){
                            Text(newTopic.topicButton)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 150)
                                .padding()
                                .background(Color("BackgroundColor"))
                                .cornerRadius(15)
                            
                        }
                    
                        Spacer()
                        
                        NavigationLink(destination: QuizView(subjectTitle: "Comment envoyer un e-mail", quiz: testQuiz)){
                            Text(newTopic.topicButton2)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 150)
                                .padding()
                                .background(Color("ButtonQuizColor"))
                                .cornerRadius(15)
                        }
                        Spacer()
                    }
                    
                }
            }
        }
    }
}

struct Topic: Identifiable{
    var id = UUID()
    var topicImage: String
    var topicTitle: String
    var topicButton: String
    var topicButton2: String
}


let topicList = [
    Topic(topicImage: "EmailIcon", topicTitle: "Comment envoyer \run e-mail", topicButton: "Tutoriel", topicButton2: "Quiz"),
    Topic(topicImage: "HeartIcon", topicTitle: "Comment \rutiliser \rDoctolib", topicButton: "Tutoriel", topicButton2: "Quiz"),
    Topic(topicImage: "CloudIcon", topicTitle: "Comment fonctionne \rle  Cloud", topicButton: "Tutoriel", topicButton2: "Quiz"),
    Topic(topicImage: "WebIcon", topicTitle: "Comment s'identifier \rsur un site", topicButton: "Tutoriel", topicButton2: "Quiz")
]
//    }


struct Previews_page_administratif___David_Previews: PreviewProvider {
    static var previews: some View {
        page_administratif___David()
    }
}
