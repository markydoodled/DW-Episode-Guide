//
//  NewSeries1.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries1: View {
    var body: some View {
        List {
            Group {
            NavigationLink(destination: Rose()) {
                Text("Rose")
            }
            NavigationLink(destination: TheEndOfTheWorld()) {
                Text("The End Of The World")
            }
            NavigationLink(destination: TheUnquietDead()) {
                Text("The Unquiet Dead")
            }
            NavigationLink(destination: AliensOfLondon()) {
                Text("Aliens Of London")
            }
            NavigationLink(destination: WorldWarThree()) {
                Text("World War Three")
            }
            NavigationLink(destination: Dalek()) {
                Text("Dalek")
            }
            NavigationLink(destination: TheLongGame()) {
                Text("The Long Game")
            }
            NavigationLink(destination: FathersDay()) {
                Text("Father's Day")
            }
            NavigationLink(destination: TheEmptyChild()) {
                Text("The Empty Child")
            }
            NavigationLink(destination: TheDoctorDances()) {
                Text("The Doctor Dances")
            }
            }
            Group {
            NavigationLink(destination: BoomTown()) {
                Text("Boom Town")
            }
            NavigationLink(destination: BadWolf()) {
                Text("Bad Wolf")
            }
            NavigationLink(destination: ThePartingOfTheWays()) {
                Text("The Parting Of The Ways")
            }
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("New Series 1")
    }
}

struct NewSeries1_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries1()
    }
}
