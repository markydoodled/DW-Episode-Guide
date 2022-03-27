//
//  ClassicSeries19.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries19: View {
    var body: some View {
        List {
            NavigationLink(destination: Castrovalva()) {
                Text("Castrovalva")
            }
            NavigationLink(destination: FourToDoomsday()) {
                Text("Four To Doomsday")
            }
            NavigationLink(destination: Kinda()) {
                Text("Kinda")
            }
            NavigationLink(destination: TheVisitation()) {
                Text("The Visitation")
            }
            NavigationLink(destination: BlackOrchid()) {
                Text("Black Orchid")
            }
            NavigationLink(destination: Earthshock()) {
                Text("Earthshock")
            }
            NavigationLink(destination: TimeFlight()) {
                Text("Time-Flight")
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 19")
    }
}

struct ClassicSeries19_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries19()
    }
}
