//
//  ListData.swift
//  SwiftUI-Demo
//
//  Created by SHARON D ROSE on 10/08/20.
//  Copyright © 2020 SHARON D ROSE. All rights reserved.
//

import SwiftUI

struct ListData: Identifiable {
    var id = UUID()
    var name: String
    var headline: String
    var bio: String
    var img: String
    
    var imageName: String { return img }
}

#if DEBUG
let testData = [
    ListData(name: "Cheetah", headline: "It is the fastest land animal", bio: "The cheetah (Acinonyx jubatus) is a large cat native to Africa and central Iran. It is the fastest land animal, capable of running at 80 to 128 km/h (50 to 80 mph), and as such has several adaptations for speed, including a light build, long thin legs and a long tail. Cheetahs typically reach 67–94 cm (26–37 in) at the shoulder, and the head-and-body length is between 1.1 and 1.5 m (3.6 and 4.9 ft)", img: "1"),
    ListData(name: "Tiger", headline: "It is an apex predator", bio: "The tiger (Panthera tigris) is the largest extant cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange-brown fur with a lighter underside. It is an apex predator, primarily preying on ungulates such as deer and wild boar.", img: "2"),
    ListData(name: "Bear", headline: "Asiatic black bears", bio: "Bears are carnivoran mammals of the family Ursidae. They are classified as caniforms, or doglike carnivorans. There are eight species in existence: Asiatic black bears, brown bears, giant pandas, North American black bears, polar bears, sloth bears, spectacled bears, and sun bears.", img: "3"),
    ListData(name: "Deer", headline: "deer are the Cervinae", bio: "Deer are the hoofed ruminant mammals forming the family Cervidae. The two main groups of deer are the Cervinae, including the muntjac, the elk, the fallow deer, and the chital; and the Capreolinae, including the reindeer, the roe deer, and the moose.", img: "4"),
    ListData(name: "Deer", headline: "deer are the Cervinae", bio: "Deer are the hoofed ruminant mammals forming the family Cervidae. The two main groups of deer are the Cervinae, including the muntjac, the elk, the fallow deer, and the chital; and the Capreolinae, including the reindeer, the roe deer, and the moose.", img: "5"),
    ListData(name: "zebra", headline: "Lifelong Learner", bio: "Zebras are African equines with distinctive black-and-white striped coats. There are three extant species: the Grévy's zebra, plains zebra and the mountain zebra. Their stripes come in different patterns, unique to each individual. Several theories have been proposed for the function of these stripes, with most evidence supporting them as a form of protection from biting flies.", img: "6"),
    ListData(name: "Koalas", headline: " koala bear is an arboreal herbivorous", bio: "The koala or, inaccurately, koala bear is an arboreal herbivorous marsupial native to Australia. It is the only extant representative of the family Phascolarctidae and its closest living relatives are the wombats, which are members of the family Vombatidae.", img: "7"),
    ListData(name: "Kelvin Tan", headline: "Self-taught iOS Mobile Developer", bio: "The chimpanzee, also known as the common chimpanzee, robust chimpanzee, or simply chimp, is a species of great ape native to the forest and savannah of tropical Africa. It has four confirmed subspecies and a fifth proposed subspecies. ", img: "8"),
]
#endif

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Text("List, Data!")
    }
}
