//
//  TheSmugglers.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheSmugglers: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheSmugglersClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheSmugglersClass>
        @State var showingShare = false
        @AppStorage("TheSmugglersNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheSmugglers_Previews: PreviewProvider {
    static var previews: some View {
        TheSmugglers()
    }
}
