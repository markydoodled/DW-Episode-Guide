//
//  ClassicSeries7.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct ClassicSeries7: View {
    var body: some View {
        List {
            NavigationLink(destination: SpearheadFromSpace()) {
                Text("Spearhead From Space")
            }
            NavigationLink(destination: AndTheSilurians()) {
                Text("Doctor Who And The Silurians")
            }
            NavigationLink(destination: TheAmbassadorsOfDeath()) {
                Text("The Ambassadors Of Death")
            }
            NavigationLink(destination: Inferno()) {
                Text("Inferno")
            }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("Classic Series 7")
    }
}

struct ClassicSeries7_Previews: PreviewProvider {
    static var previews: some View {
        ClassicSeries7()
    }
}
