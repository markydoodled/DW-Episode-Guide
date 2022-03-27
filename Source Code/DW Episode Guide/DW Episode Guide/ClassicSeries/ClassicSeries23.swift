//
//  ClassicSeries23.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries23: View {
    var body: some View {
        List {
            NavigationLink(destination: TheMysteriousPlanet()) {
                Text("The Mysterious Planet")
            }
            NavigationLink(destination: Mindwarp()) {
                Text("Mindwarp")
            }
            NavigationLink(destination: TerrorOfTheVervoids()) {
                Text("Terror Of The Vervoids")
            }
            NavigationLink(destination: TheUltimateFoe()) {
                Text("The Ultimate Foe")
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 23")
    }
}

struct ClassicSeries23_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries23()
    }
}
