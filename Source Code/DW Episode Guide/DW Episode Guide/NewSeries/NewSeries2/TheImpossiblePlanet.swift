//
//  TheImpossiblePlanet.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheImpossiblePlanet: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheImpossiblePlanetClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheImpossiblePlanetClass>
        @State var showingShare = false
        @AppStorage("TheImpossiblePlanetNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheImpossiblePlanet_Previews: PreviewProvider {
    static var previews: some View {
        TheImpossiblePlanet()
    }
}
