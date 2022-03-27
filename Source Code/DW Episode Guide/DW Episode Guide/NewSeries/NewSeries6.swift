//
//  NewSeries6.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries6: View {
    var body: some View {
        List {
            Group {
            NavigationLink(destination: AChristmasCarol()) {
                Text("A Christmas Carol")
            }
            NavigationLink(destination: TheImpossibleAstronaut()) {
                Text("The Impossible Astronaut")
            }
            NavigationLink(destination: DayOfTheMoon()) {
                Text("Day Of The Moon")
            }
            NavigationLink(destination: TheCurseOfTheBlackSpot()) {
                Text("The Curse Of The Black Spot")
            }
            NavigationLink(destination: TheDoctorsWife()) {
                Text("The Doctor's Wife")
            }
            NavigationLink(destination: TheRebelFlesh()) {
                Text("The Rebel Flesh")
            }
            NavigationLink(destination: TheAlmostPeople()) {
                Text("The Almost People")
            }
            NavigationLink(destination: AGoodManGoesToWar()) {
                Text("A Good Man Goes To War")
            }
            NavigationLink(destination: LetsKillHitler()) {
                Text("Let's Kill Hitler")
            }
            NavigationLink(destination: NightTerrors()) {
                Text("Night Terrors")
            }
        }
        Group {
            NavigationLink(destination: TheGirlWhoWaited()) {
                Text("The Girl Who Waited")
            }
            NavigationLink(destination: TheGodComplex()) {
                Text("The God Complex")
            }
            NavigationLink(destination: ClosingTime()) {
                Text("Closing Time")
            }
            NavigationLink(destination: TheWeddingOfRiverSong()) {
                Text("The Wedding Of River Song")
            }
        }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("New Series 6")
    }
}

struct NewSeries6_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries6()
    }
}
