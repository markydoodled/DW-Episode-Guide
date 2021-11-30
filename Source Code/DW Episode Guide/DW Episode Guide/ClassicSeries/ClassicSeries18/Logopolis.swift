//
//  Logopolis.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct Logopolis: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: LogopolisClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<LogopolisClass>
        @State var showingShare = false
        @AppStorage("LogopolisNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Logopolis_Previews: PreviewProvider {
    static var previews: some View {
        Logopolis()
    }
}
