//
//  NewSeries7.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries7: View {
    var body: some View {
        List {
            Group {
            NavigationLink(destination: TheDoctorTheWidowAndTheWardrobe()) {
                Text("The Doctor, The Widow And The Wardrobe")
            }
            NavigationLink(destination: AsylumOfTheDaleks()) {
                Text("Asylum Of The Daleks")
            }
            NavigationLink(destination: DinosaursOnASpaceship()) {
                Text("Dinosaurs On A Spaceship")
            }
            NavigationLink(destination: ATownCalledMercy()) {
                Text("A Town Called Mercy")
            }
            NavigationLink(destination: ThePowerOfThree()) {
                Text("The Power Of Three")
            }
            NavigationLink(destination: TheAngelsTakeManhattan()) {
                Text("The Angels Take Manhattan")
            }
            NavigationLink(destination: TheSnowmen()) {
                Text("The Snowmen")
            }
            NavigationLink(destination: TheBellsOfSaintJohn()) {
                Text("The Bells Of Saint John")
            }
            NavigationLink(destination: TheRingsOfAkhaten()) {
                Text("The Rings Of Akhaten")
            }
            NavigationLink(destination: ColdWar()) {
                Text("Cold War")
            }
        }
        Group {
            NavigationLink(destination: Hide()) {
                Text("Hide")
            }
            NavigationLink(destination: JourneyToTheCentreOfTheTARDIS()) {
                Text("Journey To The Centre Of The TARDIS")
            }
            NavigationLink(destination: TheCrimsonHorror()) {
                Text("The Crimson Horror")
            }
            NavigationLink(destination: NightmareInSilver()) {
                Text("Nightmare In Silver")
            }
            NavigationLink(destination: TheNameOfTheDoctor()) {
                Text("The Name Of The Doctor")
            }
            NavigationLink(destination: TheDayOfTheDoctor()) {
                Text("The Day Of The Doctor")
            }
            NavigationLink(destination: TheTimeOfTheDoctor()) {
                Text("The Time Of The Doctor")
            }
        }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("New Series 7")
    }
}

struct NewSeries7_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries7()
    }
}
