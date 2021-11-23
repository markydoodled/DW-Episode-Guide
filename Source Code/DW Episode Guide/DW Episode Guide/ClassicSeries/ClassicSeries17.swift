//
//  ClassicSeries17.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries17: View {
    var body: some View {
        List {
            NavigationLink(destination: DestinyOfTheDaleks()) {
                Text("Destiny Of The Daleks")
            }
            NavigationLink(destination: CityOfDeath()) {
                Text("City Of Death")
            }
            NavigationLink(destination: TheCreatureFromThePit()) {
                Text("The Creature From The Pit")
            }
            NavigationLink(destination: NightmareOfEden()) {
                Text("Nightmare Of Eden")
            }
            NavigationLink(destination: TheHornsOfNimon()) {
                Text("The Horns Of Nimon")
            }
            NavigationLink(destination: Shada()) {
                Text("Shada")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 17")
    }
}

struct ClassicSeries17_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries17()
    }
}
