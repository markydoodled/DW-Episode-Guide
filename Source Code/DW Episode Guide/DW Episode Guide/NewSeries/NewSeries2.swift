//
//  NewSeries2.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries2: View {
    var body: some View {
        List {
            Group {
            NavigationLink(destination: TheChristmasInvasion()) {
                Text("The Christmas Invasion")
            }
            NavigationLink(destination: NewEarth()) {
                Text("New Earth")
            }
            NavigationLink(destination: ToothAndClaw()) {
                Text("Tooth And Claw")
            }
            NavigationLink(destination: SchoolReunion()) {
                Text("School Reunion")
            }
            NavigationLink(destination: TheGirlInTheFireplace()) {
                Text("The Girl In The Fireplace")
            }
            NavigationLink(destination: RiseOfTheCybermen()) {
                Text("Rise Of The Cybermen")
            }
            NavigationLink(destination: TheAgeOfSteel()) {
                Text("The Age Of Steel")
            }
            NavigationLink(destination: TheIdiotsLantern()) {
                Text("The Idiot's Lantern")
            }
            NavigationLink(destination: TheImpossiblePlanet()) {
                Text("The Impossible Planet")
            }
            NavigationLink(destination: TheSatanPit()) {
                Text("The Satan Pit")
            }
        }
        Group {
            NavigationLink(destination: Love_Monsters()) {
                Text("Love & Monsters")
            }
            NavigationLink(destination: FearHer()) {
                Text("Fear Her")
            }
            NavigationLink(destination: ArmyOfGhosts()) {
                Text("Army Of Ghosts")
            }
            NavigationLink(destination: Doomsday()) {
                Text("Doomsday")
            }
        }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("New Series 2")
    }
}

struct NewSeries2_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries2()
    }
}
