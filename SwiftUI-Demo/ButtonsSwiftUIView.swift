//
//  ButtonsSwiftUIView.swift
//  SwiftUI-Demo
//
//  Created by SHARON D ROSE on 28/07/20.
//  Copyright © 2020 SHARON D ROSE. All rights reserved.
//

import SwiftUI

struct ButtonsSwiftUIView: View {
    
    @State private var showDetails = false
    @State var counter = 0
    
    var body: some View {
        
        
        VStack {
            
            VStack {
                
                
                Text("Counter value: \(self.counter)")
                    .foregroundColor(.blue)
                // Increment button
                Button(action: {
                    // What to perform
                    
                    self.counter += 1
                }) {
                    HStack {
                        Image(systemName: "plus")
                        Text("Increment")
                    }.padding(10.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0)
                    )
                }
                
            }
            //Bookmark button
            Button(action: {
                // What to perform
                
                print("Button action")
            }) {
                HStack {
                    Image(systemName: "bookmark.fill")
                    Text("Mark this")
                }.padding(15.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                )
            }
            HStack{
                Button(action: {
                    print("Next button tapped!")
                }) {
                    Image(systemName: "arrowtriangle.right")
                    Text("Next")
                        .font(.title)
                        .foregroundColor(.gray)
                }
            } .padding(10)
            HStack{
                Button(action: {
                    print("Delete tapped!")
                }) {
                    HStack {
                        Image(systemName: "trash")
                            .font(.title)
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(40)
                }
            } .padding(10)
            HStack{
                Button(action: {
                    print("Cloud tapped!")
                }) {
                    HStack {
                        Image(systemName: "cloud")
                            .font(.title)
                        Text("Cloud")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                        
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    
                }
            } .padding(10)
            
            
            
        }
        
        
        
    }
}

struct ButtonsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsSwiftUIView()
    }
}
