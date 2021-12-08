//
//  NightTerrors.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct NightTerrors: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: NightTerrorsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<NightTerrorsClass>
        @State var showingShare = false
        @AppStorage("NightTerrorsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct NightTerrors_Previews: PreviewProvider {
    static var previews: some View {
        NightTerrors()
    }
}
