//
//  PlanetOfTheOod.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct PlanetOfTheOod: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: PlanetOfTheOodClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<PlanetOfTheOodClass>
        @State var showingShare = false
        @AppStorage("PlanetOfTheOodNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PlanetOfTheOod_Previews: PreviewProvider {
    static var previews: some View {
        PlanetOfTheOod()
    }
}
