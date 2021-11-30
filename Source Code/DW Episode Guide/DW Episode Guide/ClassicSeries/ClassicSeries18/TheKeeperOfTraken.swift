//
//  TheKeeperOfTraken.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheKeeperOfTraken: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheKeeperOfTrakenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheKeeperOfTrakenClass>
        @State var showingShare = false
        @AppStorage("TheKeeperOfTrakenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheKeeperOfTraken_Previews: PreviewProvider {
    static var previews: some View {
        TheKeeperOfTraken()
    }
}
