//
//  Orphan55.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 19/11/2021.
//

import SwiftUI

struct Orphan55: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: Orphan55Class.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<Orphan55Class>
        @State var showingShare = false
        @AppStorage("Orphan55Notes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Orphan55_Previews: PreviewProvider {
    static var previews: some View {
        Orphan55()
    }
}
