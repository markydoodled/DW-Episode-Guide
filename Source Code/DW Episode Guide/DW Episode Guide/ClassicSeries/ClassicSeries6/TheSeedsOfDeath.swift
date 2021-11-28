//
//  TheSeedsOfDeath.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheSeedsOfDeath: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheSeedsOfDeathClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheSeedsOfDeathClass>
        @State var showingShare = false
        @AppStorage("TheSeedsOfDeathNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheSeedsOfDeath_Previews: PreviewProvider {
    static var previews: some View {
        TheSeedsOfDeath()
    }
}
