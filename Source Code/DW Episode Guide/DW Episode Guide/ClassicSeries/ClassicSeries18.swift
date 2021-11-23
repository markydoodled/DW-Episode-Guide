//
//  ClassicSeries18.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries18: View {
    var body: some View {
        List {
            NavigationLink(destination: TheLeisureHive()) {
                Text("The Leisure Hive")
            }
            NavigationLink(destination: Meglos()) {
                Text("Meglos")
            }
            NavigationLink(destination: FullCircle()) {
                Text("Full Circle")
            }
            NavigationLink(destination: StateOfDecay()) {
                Text("State Of Decay")
            }
            NavigationLink(destination: WarriorsGate()) {
                Text("Warriors' Gate")
            }
            NavigationLink(destination: TheKeeperOfTraken()) {
                Text("The Keeper Of Traken")
            }
            NavigationLink(destination: Logopolis()) {
                Text("Logopolis")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 18")
    }
}

struct ClassicSeries18_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries18()
    }
}
