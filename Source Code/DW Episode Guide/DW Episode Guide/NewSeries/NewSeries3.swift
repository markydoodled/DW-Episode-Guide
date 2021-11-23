//
//  NewSeries3.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries3: View {
    var body: some View {
        List {
            Group {
            NavigationLink(destination: TheRunawayBride()) {
                Text("The Runaway Bride")
            }
            NavigationLink(destination: SmithAndJones()) {
                Text("Smith And Jones")
            }
            NavigationLink(destination: TheShakespeareCode()) {
                Text("The Shakespeare Code")
            }
            NavigationLink(destination: Gridlock()) {
                Text("Gridlock")
            }
            NavigationLink(destination: DaleksInManhattan()) {
                Text("Daleks In Manhattan")
            }
            NavigationLink(destination: EvolutionOfTheDaleks()) {
                Text("Evolution Of The Daleks")
            }
            NavigationLink(destination: TheLazarusExperiment()) {
                Text("The Lazarus Experiment")
            }
            NavigationLink(destination: _42()) {
                Text("42")
            }
            NavigationLink(destination: HumanNature()) {
                Text("Human Nature")
            }
            NavigationLink(destination: TheFamilyOfBlood()) {
                Text("The Family Of Blood")
            }
        }
        Group {
            NavigationLink(destination: Blink()) {
                Text("Blink")
            }
            NavigationLink(destination: Utopia()) {
                Text("Utopia")
            }
            NavigationLink(destination: TheSoundOfDrums()) {
                Text("The Sound Of Drums")
            }
            NavigationLink(destination: LastOfTheTimeLords()) {
                Text("Last Of The Time Lords")
            }
        }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("New Series 3")
    }
}

struct NewSeries3_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries3()
    }
}
