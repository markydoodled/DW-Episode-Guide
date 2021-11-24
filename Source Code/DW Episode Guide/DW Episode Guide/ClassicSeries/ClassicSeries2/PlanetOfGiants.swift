//
//  PlanetOfGiants.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct PlanetOfGiants: View {
@Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: PlanetOfGiantsClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<PlanetOfGiantsClass>
    @State var showingShare = false
    @AppStorage("PlanetOfGiantsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PlanetOfGiants_Previews: PreviewProvider {
    static var previews: some View {
        PlanetOfGiants()
    }
}
