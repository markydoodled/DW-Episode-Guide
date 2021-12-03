//
//  BadWolf.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct BadWolf: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: BadWolfClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<BadWolfClass>
        @State var showingShare = false
        @AppStorage("BadWolfNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct BadWolf_Previews: PreviewProvider {
    static var previews: some View {
        BadWolf()
    }
}
