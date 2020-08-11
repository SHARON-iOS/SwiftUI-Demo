//
//  ContentView.swift
//  SwiftUI-Demo
//
//  Created by SHARON D ROSE on 28/07/20.
//  Copyright © 2020 SHARON D ROSE. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        VStack {
            
            
            VStack {
                Text("Hello, SwiftUI!")
                    .foregroundColor(Color.green)
                    .fontWeight(.bold)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    VStack(alignment: .center) {
                        Text("California")
                            .font(.body)
                    }
                    .padding()
                }
                .padding()
                
                
            }
            
           
            MapView()
            
            
        }
        
        
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

