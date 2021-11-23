//
//  NewSeries5.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries5: View {
    var body: some View {
        List {
            Group {
            NavigationLink(destination: TheEleventhHour()) {
                Text("The Eleventh Hour")
            }
            NavigationLink(destination: TheBeastBelow()) {
                Text("The Beast Below")
            }
            NavigationLink(destination: VictoryOfTheDaleks()) {
                Text("Victory Of The Daleks")
            }
            NavigationLink(destination: TheTimeOfAngels()) {
                Text("The Time Of Angels")
            }
            NavigationLink(destination: FleshAndStone()) {
                Text("Flesh And Stone")
            }
            NavigationLink(destination: TheVampiresOfVenice()) {
                Text("The Vampires Of Venice")
            }
            NavigationLink(destination: AmysChoice()) {
                Text("Amy's Choice")
            }
            NavigationLink(destination: TheHungryEarth()) {
                Text("The Hungry Earth")
            }
            NavigationLink(destination: ColdBlood()) {
                Text("Cold Blood")
            }
            NavigationLink(destination: VincentAndTheDoctor()) {
                Text("Vincent And The Doctor")
            }
        }
        Group {
            NavigationLink(destination: TheLodger()) {
                Text("The Lodger")
            }
            NavigationLink(destination: ThePandoricaOpens()) {
                Text("The Pandorica Opens")
            }
            NavigationLink(destination: TheBigBang()) {
                Text("The Big Bang")
            }
        }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("New Series 5")
    }
}

struct NewSeries5_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries5()
    }
}
