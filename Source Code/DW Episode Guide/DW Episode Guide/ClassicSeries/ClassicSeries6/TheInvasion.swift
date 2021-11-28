//
//  TheInvasion.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheInvasion: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheInvasionClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheInvasionClass>
        @State var showingShare = false
        @AppStorage("TheInvasionNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheInvasion_Previews: PreviewProvider {
    static var previews: some View {
        TheInvasion()
    }
}
