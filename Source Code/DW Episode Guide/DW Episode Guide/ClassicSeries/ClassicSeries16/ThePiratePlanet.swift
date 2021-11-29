//
//  ThePiratePlanet.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 14/11/2021.
//

import SwiftUI

struct ThePiratePlanet: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ThePiratePlanetClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ThePiratePlanetClass>
        @State var showingShare = false
        @AppStorage("ThePiratePlanetNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ThePiratePlanet_Previews: PreviewProvider {
    static var previews: some View {
        ThePiratePlanet()
    }
}
