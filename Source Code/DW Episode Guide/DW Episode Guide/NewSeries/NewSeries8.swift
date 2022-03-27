//
//  NewSeries8.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries8: View {
    var body: some View {
        List {
            Group {
            NavigationLink(destination: DeepBreath()) {
                Text("Deep Breath")
            }
            NavigationLink(destination: IntoTheDalek()) {
                Text("Into The Dalek")
            }
            NavigationLink(destination: RobotOfSherwood()) {
                Text("Robot Of Sherwood")
            }
            NavigationLink(destination: Listen()) {
                Text("Listen")
            }
            NavigationLink(destination: TimeHeist()) {
                Text("Time Heist")
            }
            NavigationLink(destination: TheCaretaker()) {
                Text("The Caretaker")
            }
            NavigationLink(destination: KillTheMoon()) {
                Text("Kill The Moon")
            }
            NavigationLink(destination: MummyOnTheOrientExpress()) {
                Text("Mummy On The Orient Express")
            }
            NavigationLink(destination: Flatline()) {
                Text("Flatline")
            }
            NavigationLink(destination: InTheForestOfTheNight()) {
                Text("In The Forest Of The Night")
            }
        }
        Group {
            NavigationLink(destination: DarkWater()) {
                Text("Dark Water")
            }
            NavigationLink(destination: DeathInHeaven()) {
                Text("Death In Heaven")
            }
        }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("New Series 8")
    }
}

struct NewSeries8_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries8()
    }
}
