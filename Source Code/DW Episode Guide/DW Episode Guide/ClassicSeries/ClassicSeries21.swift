//
//  ClassicSeries21.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries21: View {
    var body: some View {
        List {
            NavigationLink(destination: WarriorsOfTheDeep()) {
                Text("Warriors Of The Deep")
            }
            NavigationLink(destination: TheAwakening()) {
                Text("The Awakening")
            }
            NavigationLink(destination: Frontios()) {
                Text("Frontios")
            }
            NavigationLink(destination: ResurrectionOfTheDaleks()) {
                Text("Resurrection Of The Daleks")
            }
            NavigationLink(destination: PlanetOfFire()) {
                Text("Planet Of Fire")
            }
            NavigationLink(destination: TheCavesOfAndrozani()) {
                Text("The Caves Of Androzani")
            }
            NavigationLink(destination: TheTwinDilemma()) {
                Text("The Twin Dilemma")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 21")
    }
}

struct ClassicSeries21_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries21()
    }
}
