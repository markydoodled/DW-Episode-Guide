//
//  PlanetOfTheDaleks.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct PlanetOfTheDaleks: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: PlanetOfTheDaleksClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<PlanetOfTheDaleksClass>
        @State var showingShare = false
        @AppStorage("PlanetOfTheDaleksNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PlanetOfTheDaleks_Previews: PreviewProvider {
    static var previews: some View {
        PlanetOfTheDaleks()
    }
}
