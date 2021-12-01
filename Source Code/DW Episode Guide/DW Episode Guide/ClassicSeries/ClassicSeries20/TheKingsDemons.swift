//
//  TheKingsDemons.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct TheKingsDemons: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheKingsDemonsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheKingsDemonsClass>
        @State var showingShare = false
        @AppStorage("TheKingsDemonsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheKingsDemons_Previews: PreviewProvider {
    static var previews: some View {
        TheKingsDemons()
    }
}
