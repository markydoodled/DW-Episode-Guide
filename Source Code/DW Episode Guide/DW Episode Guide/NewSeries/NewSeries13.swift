//
//  NewSeries13.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries13: View {
    var body: some View {
        List {
            NavigationLink(destination: TheHalloweenApocalypse()) {
                Text("The Halloween Apocalypse")
            }
            NavigationLink(destination: WarOfTheSontarans()) {
                Text("War Of The Sontarans")
            }
            NavigationLink(destination: OnceUponTime()) {
                Text("Once, Upon Time")
            }
            NavigationLink(destination: VillageOfTheAngels()) {
                Text("Village Of The Angels")
            }
            NavigationLink(destination: SurvivorsOfTheFlux()) {
                Text("Survivors Of The Flux")
            }
            NavigationLink(destination: TheVanquishers()) {
                Text("The Vanquishers")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("New Series 13")
    }
}

struct NewSeries13_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries13()
    }
}
