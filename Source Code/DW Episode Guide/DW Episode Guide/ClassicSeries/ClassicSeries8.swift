//
//  ClassicSeries8.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries8: View {
    var body: some View {
        List {
            NavigationLink(destination: TerrorOfTheAutons()) {
                Text("Terror Of The Autons")
            }
            NavigationLink(destination: TheMindOfEvil()) {
                Text("The Mind Of Evil")
            }
            NavigationLink(destination: TheClawsOfAxos()) {
                Text("The Claws Of Axos")
            }
            NavigationLink(destination: ColonyInSpace()) {
                Text("Colony In Space")
            }
            NavigationLink(destination: TheDaemons()) {
                Text("The Daemons")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 8")
    }
}

struct ClassicSeries8_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries8()
    }
}
