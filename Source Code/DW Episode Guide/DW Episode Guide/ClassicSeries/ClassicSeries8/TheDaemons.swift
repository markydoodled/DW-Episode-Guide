//
//  TheDaemons.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheDaemons: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheDaemonsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheDaemonsClass>
        @State var showingShare = false
        @AppStorage("TheDaemonsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheDaemons_Previews: PreviewProvider {
    static var previews: some View {
        TheDaemons()
    }
}
