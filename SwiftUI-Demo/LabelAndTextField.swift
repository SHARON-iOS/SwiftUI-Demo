//
//  LabelAndTextField.swift
//  SwiftUI-Demo
//
//  Created by SHARON D ROSE on 10/08/20.
//  Copyright © 2020 SHARON D ROSE. All rights reserved.
//

import SwiftUI

struct LabelAndTextField: View {
    @State private var password: String = ""

    var body: some View {
        
        VStack {
            //Label
                   Text("Welcome to, SwiftUI!")
                   .background(Color.green) //  Change the background color to purple including the padding
                   .foregroundColor(.white)  //  Set the foreground/font color to white
                    .padding(7)                // Add the paddings

                   .font(.title)             // Change the font type
                   .border(Color.green, width: 10)
                    // set the corner radius
                    .cornerRadius(40)
            .overlay(
            RoundedRectangle(cornerRadius: 40)
                .stroke(Color.purple, lineWidth: 5))
                    // shadow
            .shadow(radius: 5.0)
            
            
            VStack{
               Text("Hello, SwiftUI!")
                   .foregroundColor(Color.white)
                   .fontWeight(.bold)
                .background(Color.green) //  Change the background color to purple including the padding

                } .padding(20)
                
            // Shadow
            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)

            // Secure TextField

            VStack {
                       SecureField("Enter a password", text: $password)
                        .frame(width: 200, height: 30, alignment: .center)
                        .border(Color.gray, width: 1)

                       Text("You entered: \(password)")

                   }
            
        }
        
        
        
        
       
    }
}


struct LabelAndTextField_Previews: PreviewProvider {
    static var previews: some View {
        LabelAndTextField()
    }
}
