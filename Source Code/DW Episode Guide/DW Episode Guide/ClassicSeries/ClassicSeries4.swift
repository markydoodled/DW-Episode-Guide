//
//  ClassicSeries4.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries4: View {
    var body: some View {
        List {
            NavigationLink(destination: TheSmugglers()) {
                Text("The Smugglers")
            }
            NavigationLink(destination: TheTenthPlanet()) {
                Text("The Tenth Planet")
            }
            NavigationLink(destination: ThePowerOfTheDaleks()) {
                Text("The Power Of The Daleks")
            }
            NavigationLink(destination: TheHighlanders()) {
                Text("The Highlanders")
            }
            NavigationLink(destination: TheUnderwaterMenace()) {
                Text("The Underwater Menace")
            }
            NavigationLink(destination: TheMoonbase()) {
                Text("The Moonbase")
            }
            NavigationLink(destination: TheMacraTerror()) {
                Text("The Macra Terror")
            }
            NavigationLink(destination: TheFacelessOnes()) {
                Text("The Faceless Ones")
            }
            NavigationLink(destination: TheEvilOfTheDaleks()) {
                Text("The Evil Of The Daleks")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 4")
    }
}

struct ClassicSeries4_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries4()
    }
}
