//
//  TheCavesOfAndrozani.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct TheCavesOfAndrozani: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheCavesOfAndrozaniClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheCavesOfAndrozaniClass>
        @State var showingShare = false
        @AppStorage("TheCavesOfAndrozaniNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheCavesOfAndrozani_Previews: PreviewProvider {
    static var previews: some View {
        TheCavesOfAndrozani()
    }
}
