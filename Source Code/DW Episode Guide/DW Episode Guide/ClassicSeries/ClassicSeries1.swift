//
//  ClassicSeries1.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries1: View {
    var body: some View {
        List {
            NavigationLink(destination: AnUnearthlyChild()) {
                Text("An Unearthly Child")
            }
            NavigationLink(destination: TheDaleks()) {
                Text("The Daleks")
            }
            NavigationLink(destination: TheEdgeOfDestruction()) {
                Text("The Edge Of Destruction")
            }
            NavigationLink(destination: MarcoPolo()) {
                Text("Marco Polo")
            }
            NavigationLink(destination: TheKeysOfMarinus()) {
                Text("The Keys Of Marinus")
            }
            NavigationLink(destination: TheAztecs()) {
                Text("The Aztecs")
            }
            NavigationLink(destination: TheSensorites()) {
                Text("The Sensorites")
            }
            NavigationLink(destination: TheReignOfTerror()) {
                Text("The Reign Of Terror")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 1")
    }
}

struct ClassicSeries1_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries1()
    }
}
