//
//  ClassicSeries15.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries15: View {
    var body: some View {
        List {
            NavigationLink(destination: HorrorOfFangRock()) {
                Text("Horror Of Fang Rock")
            }
            NavigationLink(destination: TheInvisibleEnemy()) {
                Text("The Invisible Enemy")
            }
            NavigationLink(destination: ImageOfTheFendahl()) {
                Text("Image Of The Fendahl")
            }
            NavigationLink(destination: TheSunMakers()) {
                Text("The Sun Makers")
            }
            NavigationLink(destination: Underworld()) {
                Text("Underworld")
            }
            NavigationLink(destination: TheInvasionOfTime()) {
                Text("The Invasion Of Time")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 15")
    }
}

struct ClassicSeries15_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries15()
    }
}
