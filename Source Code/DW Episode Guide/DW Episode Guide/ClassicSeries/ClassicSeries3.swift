//
//  ClassicSeries3.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries3: View {
    var body: some View {
        List {
            NavigationLink(destination: Galaxy4()) {
                Text("Galaxy 4")
            }
            NavigationLink(destination: MissionToTheUnknown()) {
                Text("Mission To The Unknown")
            }
            NavigationLink(destination: TheMythMakers()) {
                Text("The Myth Makers")
            }
            NavigationLink(destination: TheDaleksMasterPlan()) {
                Text("The Daleks' Master Plan")
            }
            NavigationLink(destination: TheMassacre()) {
                Text("The Massacre")
            }
            NavigationLink(destination: TheArk()) {
                Text("The Ark")
            }
            NavigationLink(destination: TheCelestialToymaker()) {
                Text("The Celestial Toymaker")
            }
            NavigationLink(destination: TheGunfighters()) {
                Text("The Gunfighters")
            }
            NavigationLink(destination: TheSavages()) {
                Text("The Savages")
            }
            NavigationLink(destination: TheWarMachines()) {
                Text("The War Machines")
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 3")
    }
}

struct ClassicSeries3_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries3()
    }
}
