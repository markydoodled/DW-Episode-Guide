//
//  TheHighlanders.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheHighlanders: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: TheHighlandersClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheHighlandersClass>
        @State var showingShare = false
        @AppStorage("TheHighlandersNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheHighlanders_Previews: PreviewProvider {
    static var previews: some View {
        TheHighlanders()
    }
}
