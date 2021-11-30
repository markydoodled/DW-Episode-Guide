//
//  TheCreatureFromThePit.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheCreatureFromThePit: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheCreatureFromThePitClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheCreatureFromThePitClass>
        @State var showingShare = false
        @AppStorage("TheCreatureFromThePitNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheCreatureFromThePit_Previews: PreviewProvider {
    static var previews: some View {
        TheCreatureFromThePit()
    }
}
