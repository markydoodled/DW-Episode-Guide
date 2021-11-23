//
//  ClassicSeries26.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries26: View {
    var body: some View {
        List {
            NavigationLink(destination: Battlefield()) {
                Text("Battlefield")
            }
            NavigationLink(destination: GhostLight()) {
                Text("Ghost Light")
            }
            NavigationLink(destination: TheCurseOfFenric()) {
                Text("The Curse Of Fenric")
            }
            NavigationLink(destination: Survival()) {
                Text("Survival")
            }
            NavigationLink(destination: TVMovie()) {
                Text("TV Movie")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 26")
    }
}

struct ClassicSeries26_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries26()
    }
}
