//
//  CircleImage.swift
//  SwiftUI-Demo
//
//  Created by SHARON D ROSE on 28/07/20.
//  Copyright © 2020 SHARON D ROSE. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    @State private var celsius: Double = 0
    var colors = ["iPhone 7", "iPhone X", "iPhone Xmax", "iPhone SE"]
    @State private var selectedColor = 0

    var body: some View {
        VStack {
            // Slider
            VStack {
                Text("Slide here")
                .frame(width: 230, height: 30, alignment: .center)

                Slider(value: $celsius, in: -100...100, step: 0.1)
                    .frame(width: 180, height: 30, alignment: .center)
                    .colorMultiply(.orange)
                

            } .padding(10)
            Image("lionimg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200, alignment: .topLeading)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.green, lineWidth: 4))
                .shadow(radius: 10)
                .overlay(ImageOverlay(), alignment: .bottomTrailing)
            
            VStack {
                    Picker(selection: $selectedColor, label: Text("    Selected")
                        .frame(width: 100, height: 28, alignment: .center)) {
                       ForEach(0 ..< colors.count) {
                          Text(self.colors[$0])
                            .frame(width: 100, height: 110, alignment: .center)
                       }
                    }
                    Text("You selected: \(colors[selectedColor])")
                 }
        .padding(10)
            
        }
            
        
        
        
    }
    
}

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("King of jungle")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.green)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(2)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
        
    }
}
