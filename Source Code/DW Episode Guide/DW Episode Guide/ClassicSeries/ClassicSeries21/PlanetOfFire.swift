//
//  PlanetOfFire.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct PlanetOfFire: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: PlanetOfFireClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<PlanetOfFireClass>
        @State var showingShare = false
        @AppStorage("PlanetOfFireNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PlanetOfFire_Previews: PreviewProvider {
    static var previews: some View {
        PlanetOfFire()
    }
}
