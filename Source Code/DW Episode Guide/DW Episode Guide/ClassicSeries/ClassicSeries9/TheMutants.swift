//
//  TheMutants.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheMutants: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheMutantsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheMutantsClass>
        @State var showingShare = false
        @AppStorage("TheMutantsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheMutants_Previews: PreviewProvider {
    static var previews: some View {
        TheMutants()
    }
}
