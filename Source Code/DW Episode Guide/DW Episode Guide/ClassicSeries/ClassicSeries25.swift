//
//  ClassicSeries25.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries25: View {
    var body: some View {
        List {
            NavigationLink(destination: RememberanceOfTheDaleks()) {
                Text("Remembrance Of The Daleks")
            }
            NavigationLink(destination: TheHappinessPatrol()) {
                Text("The Happiness Patrol")
            }
            NavigationLink(destination: SilverNemesis()) {
                Text("Silver Nemesis")
            }
            NavigationLink(destination: TheGreatestShowInTheGalaxy()) {
                Text("The Greatest Show In The Galaxy")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 25")
    }
}

struct ClassicSeries25_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries25()
    }
}
