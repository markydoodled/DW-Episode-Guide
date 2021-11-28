//
//  PlanetOfTheSpiders.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct PlanetOfTheSpiders: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: PlanetOfTheSpidersClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<PlanetOfTheSpidersClass>
        @State var showingShare = false
        @AppStorage("PlanetOfTheSpidersNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PlanetOfTheSpiders_Previews: PreviewProvider {
    static var previews: some View {
        PlanetOfTheSpiders()
    }
}
