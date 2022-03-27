//
//  ClassicSeries2.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries2: View {
    var body: some View {
        List {
            NavigationLink(destination: PlanetOfGiants()) {
                Text("Planet Of Giants")
            }
            NavigationLink(destination: TheDalekInvasionOfEarth()) {
                Text("The Dalek Invasion Of Earth")
            }
            NavigationLink(destination: TheRescue()) {
                Text("The Rescue")
            }
            NavigationLink(destination: TheRomans()) {
                Text("The Romans")
            }
            NavigationLink(destination: TheWebPlanet()) {
                Text("The Web Planet")
            }
            NavigationLink(destination: TheCrusade()) {
                Text("The Crusade")
            }
            NavigationLink(destination: TheSpaceMuseum()) {
                Text("The Space Museum")
            }
            NavigationLink(destination: TheChase()) {
                Text("The Chase")
            }
            NavigationLink(destination: TheTimeMeddler()) {
                Text("The Time Meddler")
            }
        }
        #if os(macOS)
            .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 2")
    }
}

struct ClassicSeries2_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries2()
    }
}
