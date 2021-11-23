//
//  ClassicSeries11.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries11: View {
    var body: some View {
        List {
            NavigationLink(destination: TheTimeWarrior()) {
                Text("The Time Warrior")
            }
            NavigationLink(destination: InvasionOfTheDinosaurs()) {
                Text("Invasion Of The Dinosaurs")
            }
            NavigationLink(destination: DeathToTheDaleks()) {
                Text("Death To The Daleks")
            }
            NavigationLink(destination: TheMonsterOfPeladon()) {
                Text("The Monster Of Peladon")
            }
            NavigationLink(destination: PlanetOfTheSpiders()) {
                Text("Planet Of The Spiders")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 11")
    }
}

struct ClassicSeries11_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries11()
    }
}
