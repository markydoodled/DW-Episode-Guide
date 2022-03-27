//
//  ClassicSeries20.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries20: View {
    var body: some View {
        List {
            NavigationLink(destination: ArcOfInfinity()) {
                Text("Arc Of Infinity")
            }
            NavigationLink(destination: Snakedance()) {
                Text("Snakedance")
            }
            NavigationLink(destination: MawdrynUndead()) {
                Text("Mawdryn Undead")
            }
            NavigationLink(destination: Terminus()) {
                Text("Terminus")
            }
            NavigationLink(destination: Enlightenment()) {
                Text("Enlightenment")
            }
            NavigationLink(destination: TheKingsDemons()) {
                Text("The King's Demons")
            }
            NavigationLink(destination: TheFiveDoctors()) {
                Text("The Five Doctors")
            }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("Classic Series 20")
    }
}

struct ClassicSeries20_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries20()
    }
}
