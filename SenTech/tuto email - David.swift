//
//  tuto email - David.swift
//  SenTech
//
//  Created by Apprenant 75 on 22/09/2022.
//

import SwiftUI

struct tuto_email___David: View {
    var body: some View {
        ZStack {
            TutorielView()
            Color("textColor")
                .ignoresSafeArea()
        }

    }
}



struct TutorielView: View {
    var body: some View {
        VStack {
            Text("Comment envoyer un email")
                .font(.largeTitle)
                .fontWeight(.bold)
            ScrollView{
            Image("EmailBanner")
                .resizable()
                .frame(width: 300, height: 150)

            Text("1: Ouvrir le navigateur \n \r  ")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.top,35)
                Text("Appuyer sur l'icône de votre navigateur internet pour démarrer votre virée sur Internet. Dans la barre de recherche, tapez le nom de votre messagerie (la plus connue est Gmail, le service de Google). \n \rUne fois connecté, cliquez sur le bouton ’’nouveau message’’ qui se situe en haut à gauche. \n \r ")
                    .font(.title2)
                Image("browser")
                    .resizable()
                    .frame(width: 300, height: 150)
                    .padding()
                Text("2: Rédiger son message \n \r")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Dans le champ ’’À’’, ajoutez vos destinataires. Vous pouvez également ajouter des destinataires dans les champs ’’Cc’’(Copie carbone) et ’’Cci’’(Copie carbone invisible) en insérant le signe ’’+’’ ou ’’@mention’’ suivis du nom du contact dans la zone correspondante lorsque vous rédigez le message. \n \rSi vous le souhaitez, vous pouvez également ajouter une pièce jointe en cliquant sur l'icône du trombone \n \r")
                    .font(.title2)
                Image("emailExample")
                    .resizable()
                    .frame(width: 300, height: 150)
                    .padding()
                
                Text("3: Gérer le type d'envoi \n \r")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("En cas d'erreur, il est possible d'annuler rapidement un envoi avant qu'il ne parvienne au destinaire. Pour cela, cliquez sur le bouton annuler qui s'affiche en bas à gauche. Ce message ne reste visible qu'une dizaine de secondes après l'envoi.")
                    .font(.title2)
               
                .font(.title)
                .padding(.horizontal)
            }
        }
        .toolbar { ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(alignment:.top){
                        Spacer()
                        Button{
                        //    isShowing.toggle()
                        }
                    label: {
                        (Image(systemName: "info.circle.fill"))}
                    .font(.system(size: 30))
                    .foregroundColor(Color("BackgroundColor"))
                        
                        }.padding(.trailing, 19)
                }
    }
}

struct tutoriel: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var description: String
    var text: String
}
struct tuto_email___David_Previews: PreviewProvider {
    static var previews: some View {
        tuto_email___David()
    }
}
}
