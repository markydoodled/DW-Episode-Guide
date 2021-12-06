//
//  Gridlock.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct Gridlock: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: GridlockClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<GridlockClass>
        @State var showingShare = false
        @AppStorage("GridlockNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Gridlock_Previews: PreviewProvider {
    static var previews: some View {
        Gridlock()
    }
}
