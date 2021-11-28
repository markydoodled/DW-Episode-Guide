//
//  TheMoonbase.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheMoonbase: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheMoonbaseClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheMoonbaseClass>
        @State var showingShare = false
        @AppStorage("TheMoonbaseNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheMoonbase_Previews: PreviewProvider {
    static var previews: some View {
        TheMoonbase()
    }
}
