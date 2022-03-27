//
//  ClassicSeries9.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries9: View {
    var body: some View {
        List {
            NavigationLink(destination: DayOfTheDaleks()) {
                Text("Day Of The Daleks")
            }
            NavigationLink(destination: TheCurseOfPeladon()) {
                Text("The Curse Of Peladon")
            }
            NavigationLink(destination: TheSeaDevils()) {
                Text("The Sea Devils")
            }
            NavigationLink(destination: TheMutants()) {
                Text("The Mutants")
            }
            NavigationLink(destination: TheTimeMonster()) {
                Text("The Time Monster")
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 9")
    }
}

struct ClassicSeries9_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries9()
    }
}
