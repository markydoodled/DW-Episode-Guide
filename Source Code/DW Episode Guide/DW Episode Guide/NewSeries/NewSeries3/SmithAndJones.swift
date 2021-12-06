//
//  SmithAndJones.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct SmithAndJones: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: SmithAndJonesClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<SmithAndJonesClass>
        @State var showingShare = false
        @AppStorage("SmithAndJonesNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SmithAndJones_Previews: PreviewProvider {
    static var previews: some View {
        SmithAndJones()
    }
}
