//
//  ClassicSeries22.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries22: View {
    var body: some View {
        List {
            NavigationLink(destination: AttackOfTheCybermen()) {
                Text("Attack Of The Cybermen")
            }
            NavigationLink(destination: VengeanceOnVaros()) {
                Text("Vengeance On Varos")
            }
            NavigationLink(destination: TheMarkOfTheRani()) {
                Text("The Mark Of The Rani")
            }
            NavigationLink(destination: TheTwoDoctors()) {
                Text("The Two Doctors")
            }
            NavigationLink(destination: Timelash()) {
                Text("Timelash")
            }
            NavigationLink(destination: RevelationOfTheDaleks()) {
                Text("Revelation Of The Daleks")
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 22")
    }
}

struct ClassicSeries22_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries22()
    }
}
