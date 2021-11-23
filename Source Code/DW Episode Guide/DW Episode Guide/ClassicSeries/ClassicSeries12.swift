//
//  ClassicSeries12.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries12: View {
    var body: some View {
        List {
            NavigationLink(destination: Robot()) {
                Text("Robot")
            }
            NavigationLink(destination: TheArkInSpace()) {
                Text("The Ark In Space")
            }
            NavigationLink(destination: TheSontaranExperiment()) {
                Text("The Sontaran Experiment")
            }
            NavigationLink(destination: GenesisOfTheDaleks()) {
                Text("Genesis Of The Daleks")
            }
            NavigationLink(destination: RevengeOfTheCybermen()) {
                Text("Revenge Of The Cybermen")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 12")
    }
}

struct ClassicSeries12_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries12()
    }
}
