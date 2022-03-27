//
//  ClassicSeries13.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries13: View {
    var body: some View {
        List {
            NavigationLink(destination: TerrorOfTheZygons()) {
                Text("Terror Of The Zygons")
            }
            NavigationLink(destination: PlanetOfEvil()) {
                Text("Planet Of Evil")
            }
            NavigationLink(destination: PyramidsOfMars()) {
                Text("Pyramids Of Mars")
            }
            NavigationLink(destination: TheAndroidInvasion()) {
                Text("The Android Invasion")
            }
            NavigationLink(destination: TheBrainOfMorbius()) {
                Text("The Brain Of Morbius")
            }
            NavigationLink(destination: TheSeedsOfDoom()) {
                Text("The Seeds Of Doom")
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 13")
    }
}

struct ClassicSeries13_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries13()
    }
}
