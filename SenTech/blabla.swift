//
//  blabla.swift
//  SenTech
//
//  Created by Apprenant 75 on 22/09/2022.
//

import SwiftUI

struct blabla: View {
    var body: some View {
        VStack{
        HStack {
            Image(systemName:"sun.max.fill")
                .resizable()
                .frame(width: 180, height: 180)
            Text("hello bitch, you got to move your ass out of the road")

            HStack {
                Text("Hi bitch, ça serait bien que tu passes à al ligne d'en dessous t'as vu")
                Text("Salut connard")
                
            }

        }
        }
    }
}

struct blabla_Previews: PreviewProvider {
    static var previews: some View {
        blabla()
    }
}
