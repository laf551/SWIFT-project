//
//  ModalView.swift
//  SenTech
//
//  Created by Apprenant66 on 28/09/2022.
//

import SwiftUI

struct ModalView: View {
    var answer: String
    @Binding var modal: Bool

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(getBackColor(true))
                .ignoresSafeArea()
            VStack {
                Text("MAUVAISE RÉPONSE")
                    .fontWeight(.bold)
                    .font(.system(size: fontSize1))
                    .foregroundColor(getTextColor(true))
                    .frame(width: 280, height: 40)
                    .padding(.top, 20)
                Text("Il fallait répondre:")
                    .italic()
//                    .underline()
                    .font(.system(size: fontSize2))
                    .foregroundColor(getTextColor(true))
                    .frame(width: 280, height: 20)
                    .padding(.top, 20)
                Text("\"" + answer + "\"")
                    .font(.system(size: fontSize1))
                    .foregroundColor(getTextColor(true))
                    .frame(width: 360, height: 120)
                    .padding(.top, 0)
                Button("J'ai compris", action: {
                    modal = false })
                    .frame(width: 330, height: 40)
                    .padding(10)
                    .font(.system(size: fontSize1).bold())
                    .background(getBackColor())
                    .foregroundColor(getTextColor())
                    .cornerRadius(20)
                Spacer()
           }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(answer: "Fkskjvbhkj hvh ughzeoe izvii zvubuzyvbv bvzbv jbejvbjv uvu uvzuuvzuvzuvzuvz", modal: .constant(true))
    }
}
