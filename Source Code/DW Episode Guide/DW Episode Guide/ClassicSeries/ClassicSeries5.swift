//
//  ClassicSeries5.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries5: View {
    var body: some View {
        List {
            NavigationLink(destination: TheTombOfTheCybermen()) {
                Text("The Tomb Of The Cybermen")
            }
            NavigationLink(destination: TheAbominableSnowmen()) {
                Text("The Abominable Snowmen")
            }
            NavigationLink(destination: TheIceWarriors()) {
                Text("The Ice Warriors")
            }
            NavigationLink(destination: TheEnemyOfTheWorld()) {
                Text("The Enemy Of The World")
            }
            NavigationLink(destination: TheWebOfFear()) {
                Text("The Web Of Fear")
            }
            NavigationLink(destination: FuryFromTheDeep()) {
                Text("Fury From The Deep")
            }
            NavigationLink(destination: TheWheelInSpace()) {
                Text("The Wheel In Space")
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 5")
    }
}

struct ClassicSeries5_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries5()
    }
}
