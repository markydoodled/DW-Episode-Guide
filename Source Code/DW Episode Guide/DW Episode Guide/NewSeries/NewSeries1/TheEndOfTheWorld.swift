//
//  TheEndOfTheWorld.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheEndOfTheWorld: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheEndOfTheWorldClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheEndOfTheWorldClass>
        @State var showingShare = false
        @AppStorage("TheEndOfTheWorldNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheEndOfTheWorld_Previews: PreviewProvider {
    static var previews: some View {
        TheEndOfTheWorld()
    }
}
