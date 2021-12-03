//
//  TheUnquietDead.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheUnquietDead: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheUnquietDeadClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheUnquietDeadClass>
        @State var showingShare = false
        @AppStorage("TheUnquietDeadNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheUnquietDead_Previews: PreviewProvider {
    static var previews: some View {
        TheUnquietDead()
    }
}
