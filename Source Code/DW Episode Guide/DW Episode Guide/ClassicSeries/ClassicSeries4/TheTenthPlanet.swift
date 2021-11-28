//
//  TheTenthPlanet.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheTenthPlanet: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheTenthPlanetClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheTenthPlanetClass>
        @State var showingShare = false
        @AppStorage("TheTenthPlanetNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheTenthPlanet_Previews: PreviewProvider {
    static var previews: some View {
        TheTenthPlanet()
    }
}
