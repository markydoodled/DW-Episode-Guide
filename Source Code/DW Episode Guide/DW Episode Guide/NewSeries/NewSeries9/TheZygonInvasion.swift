//
//  TheZygonInvasion.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheZygonInvasion: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheZygonInvasionClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheZygonInvasionClass>
        @State var showingShare = false
        @AppStorage("TheZygonInvasionNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheZygonInvasion_Previews: PreviewProvider {
    static var previews: some View {
        TheZygonInvasion()
    }
}
