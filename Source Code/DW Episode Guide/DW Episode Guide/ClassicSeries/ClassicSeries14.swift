//
//  ClassicSeries14.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries14: View {
    var body: some View {
        List {
            NavigationLink(destination: TheMasqueOfMandragora()) {
                Text("The Masque Of Mandragora")
            }
            NavigationLink(destination: TheHandOfFear()) {
                Text("The Hand Of Fear")
            }
            NavigationLink(destination: TheDeadlyAssassin()) {
                Text("The Deadly Assassin")
            }
            NavigationLink(destination: TheFaceOfEvil()) {
                Text("The Face Of Evil")
            }
            NavigationLink(destination: TheRobotsOfDeath()) {
                Text("The Robots Of Death")
            }
            NavigationLink(destination: TheTalonsOfWengChiang()) {
                Text("The Talons Of Weng-Chiang")
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 14")
    }
}

struct ClassicSeries14_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries14()
    }
}
