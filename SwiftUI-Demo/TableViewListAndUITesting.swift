//
//  TableViewListAndUITesting.swift
//  SwiftUI-Demo
//
//  Created by SHARON D ROSE on 10/08/20.
//  Copyright © 2020 SHARON D ROSE. All rights reserved.
//

import SwiftUI

struct ListView : View {
    var listData: [ListData] = []
    
    var body: some View {
        NavigationView {
            List(listData) { item in
                TableCell(list: item)
            }.navigationBarTitle(Text("Sample List"))
        }
    }
}

#if DEBUG
struct List_Previews : PreviewProvider {
    static var previews: some View {
        ListView(listData: testData)
    }
}
#endif

struct TableCell : View {
    let list: ListData
    var body: some View {
    
        return NavigationLink(destination: ProfileScreen(name: list.name, img: "lionimg", headline: list.headline, bio: list.bio)) {
            Image(list.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 100.0, height: 80.0, alignment: .center)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text(list.name)
                Text(list.headline)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}
