//
//  TheSavages.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheSavages: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheSavagesClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheSavagesClass>
        @State var showingShare = false
        @AppStorage("TheSavagesNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheSavages_Previews: PreviewProvider {
    static var previews: some View {
        TheSavages()
    }
}
