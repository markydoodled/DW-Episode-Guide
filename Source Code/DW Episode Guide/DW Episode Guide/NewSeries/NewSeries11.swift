//
//  NewSeries11.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries11: View {
    var body: some View {
        List {
            Group {
            NavigationLink(destination: TheWomanWhoFellToEarth()) {
                Text("The Woman Who Fell To Earth")
            }
            NavigationLink(destination: TheGhostMonument()) {
                Text("The Ghost Monument")
            }
            NavigationLink(destination: Rosa()) {
                Text("Rosa")
            }
            NavigationLink(destination: ArachnidsInTheUK()) {
                Text("Arachnids In The UK")
            }
            NavigationLink(destination: TheTsurangaConundrum()) {
                Text("The Tsuranga Conundrum")
            }
            NavigationLink(destination: DemonsOfThePunjab()) {
                Text("Demons Of The Punjab")
            }
            NavigationLink(destination: Kerblam()) {
                Text("Kerblam!")
            }
            NavigationLink(destination: TheWitchfinders()) {
                Text("The Witchfinders")
            }
            NavigationLink(destination: ItTakesYouAway()) {
                Text("It Takes You Away")
            }
            NavigationLink(destination: TheBattleOfRanskoorAvKolos()) {
                Text("The Battle Of Ranskoor Av Kolos")
            }
        }
        Group {
            NavigationLink(destination: Resolution()) {
                Text("Resolution")
            }
        }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("New Series 11")
    }
}

struct NewSeries11_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries11()
    }
}
