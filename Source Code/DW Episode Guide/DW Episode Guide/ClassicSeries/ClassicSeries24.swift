//
//  ClassicSeries24.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries24: View {
    var body: some View {
        List {
            NavigationLink(destination: TimeAndTheRani()) {
                Text("Time And The Rani")
            }
            NavigationLink(destination: ParadiseTowers()) {
                Text("Paradise Towers")
            }
            NavigationLink(destination: DeltaAndTheBannermen()) {
                Text("Delta And The Bannermen")
            }
            NavigationLink(destination: Dragonfire()) {
                Text("Dragonfire")
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 24")
    }
}

struct ClassicSeries24_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries24()
    }
}
