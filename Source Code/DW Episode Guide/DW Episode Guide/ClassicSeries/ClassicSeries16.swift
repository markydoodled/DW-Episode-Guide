//
//  ClassicSeries16.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries16: View {
    var body: some View {
        List {
            NavigationLink(destination: TheRibosOperation()) {
                Text("The Ribos Operation")
            }
            NavigationLink(destination: ThePiratePlanet()) {
                Text("The Pirate Planet")
            }
            NavigationLink(destination: TheStonesOfBlood()) {
                Text("The Stones Of Blood")
            }
            NavigationLink(destination: TheAndroidsOfTara()) {
                Text("The Androids Of Tara")
            }
            NavigationLink(destination: ThePowerOfKroll()) {
                Text("The Power Of Kroll")
            }
            NavigationLink(destination: TheArmageddonFactor()) {
                Text("The Armageddon Factor")
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 16")
    }
}

struct ClassicSeries16_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries16()
    }
}
