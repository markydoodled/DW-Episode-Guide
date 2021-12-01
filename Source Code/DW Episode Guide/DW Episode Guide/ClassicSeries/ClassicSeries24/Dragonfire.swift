//
//  Dragonfire.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 14/11/2021.
//

import SwiftUI

struct Dragonfire: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: DragonfireClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<DragonfireClass>
        @State var showingShare = false
        @AppStorage("DragonfireNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Dragonfire_Previews: PreviewProvider {
    static var previews: some View {
        Dragonfire()
    }
}
