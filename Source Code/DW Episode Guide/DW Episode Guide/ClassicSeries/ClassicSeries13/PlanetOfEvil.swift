//
//  PlanetOfEvil.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct PlanetOfEvil: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: PlanetOfEvilClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<PlanetOfEvilClass>
        @State var showingShare = false
        @AppStorage("PlanetOfEvilNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PlanetOfEvil_Previews: PreviewProvider {
    static var previews: some View {
        PlanetOfEvil()
    }
}
