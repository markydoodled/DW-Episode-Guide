//
//  ClassicSeries10.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries10: View {
    var body: some View {
        List {
            NavigationLink(destination: TheThreeDoctors()) {
                Text("The Three Doctors")
            }
            NavigationLink(destination: CarnivalOfMonsters()) {
                Text("Carnival Of Monsters")
            }
            NavigationLink(destination: FrontierInSpace()) {
                Text("Frontier In Space")
            }
            NavigationLink(destination: PlanetOfTheDaleks()) {
                Text("Planet Of The Daleks")
            }
            NavigationLink(destination: TheGreenDeath()) {
                Text("The Green Death")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 10")
    }
}

struct ClassicSeries10_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries10()
    }
}
