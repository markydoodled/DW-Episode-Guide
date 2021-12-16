//
//  TheGhostMonument.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheGhostMonument: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheGhostMonumentClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheGhostMonumentClass>
        @State var showingShare = false
        @AppStorage("TheGhostMonumentNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheGhostMonument_Previews: PreviewProvider {
    static var previews: some View {
        TheGhostMonument()
    }
}
