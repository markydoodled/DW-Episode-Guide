//
//  ClassicSeries6.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries6: View {
    var body: some View {
        List {
            NavigationLink(destination: TheDominators()) {
                Text("The Dominators")
            }
            NavigationLink(destination: TheMindRobber()) {
                Text("The Mind Robber")
            }
            NavigationLink(destination: TheInvasion()) {
                Text("The Invasion")
            }
            NavigationLink(destination: TheKrotons()) {
                Text("The Krotons")
            }
            NavigationLink(destination: TheSeedsOfDeath()) {
                Text("The Seeds Of Death")
            }
            NavigationLink(destination: TheSpacePirates()) {
                Text("The Space Pirates")
            }
            NavigationLink(destination: TheWarGames()) {
                Text("The War Games")
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 6")
    }
}

struct ClassicSeries6_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries6()
    }
}
