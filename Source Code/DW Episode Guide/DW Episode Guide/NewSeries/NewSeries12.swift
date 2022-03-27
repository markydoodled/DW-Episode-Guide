//
//  NewSeries12.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries12: View {
    var body: some View {
        List {
            Group {
            NavigationLink(destination: SpyfallPart1()) {
                Text("Spyfall - Part 1")
            }
            NavigationLink(destination: SpyfallPart2()) {
                Text("Spyfall - Part 2")
            }
            NavigationLink(destination: Orphan55()) {
                Text("Orphan 55")
            }
            NavigationLink(destination: NikolaTeslasNightOfTerror()) {
                Text("Nikola Tesla's Night Of Terror")
            }
            NavigationLink(destination: FugitiveOfTheJudoon()) {
                Text("Fugitive Of The Judoon")
            }
            NavigationLink(destination: Praxeus()) {
                Text("Praxeus")
            }
            NavigationLink(destination: CanYouHearMe()) {
                Text("Can You Hear Me?")
            }
            NavigationLink(destination: TheHauntingOfVillaDiodati()) {
                Text("The Haunting Of Villa Diodati")
            }
            NavigationLink(destination: AscensionOfTheCybermen()) {
                Text("Ascension Of The Cybermen")
            }
            NavigationLink(destination: TheTimelessChildren()) {
                Text("The Timeless Children")
            }
            }
            Group {
            NavigationLink(destination: RevolutionOfTheDaleks_()) {
                Text("Revolution Of The Daleks")
            }
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("New Series 12")
    }
}

struct NewSeries12_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries12()
    }
}
