//
//  ProfileScreen.swift
//  SwiftUI-Demo
//
//  Created by SHARON D ROSE on 10/08/20.
//  Copyright © 2020 SHARON D ROSE. All rights reserved.
//

import SwiftUI

struct ProfileScreen : View {
    var name: String
    var img: String
    var headline: String
    var bio: String
    
    var body: some View {
        VStack {
            Image(img)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                
                .overlay(
                    Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: .leading, endPoint: .trailing), lineWidth: 4)
                    
            )
                
                .shadow(radius: 10)
            Text(name)
                .font(.title)
            Text(headline)
                .font(.subheadline)
            Divider()
            Text(bio)
                .font(.headline)
                .multilineTextAlignment(.center)
                .lineLimit(50)
                .foregroundColor(.gray)
            
        }.padding().navigationBarTitle(Text(name), displayMode: .inline)
    }
}

// UI Testing
#if DEBUG
struct Detail_Previews : PreviewProvider {
    static var previews: some View {
        ProfileScreen(name: "Lion",img: "lionimg", headline: "King of Jungle", bio: "Lions are the anerly members o the cat faimily tae display obvious sexual dimorphism – that is, males an females leuk distinctly different. Thay an aa hae specialised roles that ilka gender plays in the pride.")
    }
}
#endif

