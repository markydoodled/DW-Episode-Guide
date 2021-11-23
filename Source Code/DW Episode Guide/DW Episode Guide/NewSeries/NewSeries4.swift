//
//  NewSeries4.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries4: View {
    var body: some View {
        List {
            Group {
            NavigationLink(destination: VoyageOfTheDamned()) {
                Text("Voyage Of The Damned")
            }
            NavigationLink(destination: PartnersInCrime()) {
                Text("Partners In Crime")
            }
            NavigationLink(destination: TheFiresOfPompeii()) {
                Text("The Fires Of Pompeii")
            }
            NavigationLink(destination: PlanetOfTheOod()) {
                Text("Planet Of The Ood")
            }
            NavigationLink(destination: TheSontaranStratagem()) {
                Text("The Sontaran Stratagem")
            }
            NavigationLink(destination: ThePoisonSky()) {
                Text("The Poison Sky")
            }
            NavigationLink(destination: TheDoctorsDaughter()) {
                Text("The Doctor's Daughter")
            }
            NavigationLink(destination: TheUnicornAndTheWasp()) {
                Text("The Unicorn And The Wasp")
            }
            NavigationLink(destination: SilenceInTheLibrary()) {
                Text("Silence In The Library")
            }
            NavigationLink(destination: ForestOfTheDead()) {
                Text("Forest Of The Dead")
            }
        }
        Group {
            NavigationLink(destination: Midnight()) {
                Text("Midnight")
            }
            NavigationLink(destination: TurnLeft()) {
                Text("Turn Left")
            }
            NavigationLink(destination: TheStolenEarth()) {
                Text("The Stolen Earth")
            }
            NavigationLink(destination: JourneysEnd()) {
                Text("Journey's End")
            }
            NavigationLink(destination: TheNextDoctor()) {
                Text("The Next Doctor")
            }
            NavigationLink(destination: PlanetOfTheDead()) {
                Text("Planet Of The Dead")
            }
            NavigationLink(destination: TheWatersOfMars()) {
                Text("The Waters Of Mars")
            }
            NavigationLink(destination: TheEndOfTimePart1()) {
                Text("The End Of Time - Part 1")
            }
            NavigationLink(destination: TheEndOfTimePart2()) {
                Text("The End Of Time - Part 2")
            }
        }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("New Series 4")
    }
}

struct NewSeries4_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries4()
    }
}
