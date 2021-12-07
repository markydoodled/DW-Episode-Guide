//
//  JourneysEnd.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct JourneysEnd: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: JourneysEndClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<JourneysEndClass>
        @State var showingShare = false
        @AppStorage("JourneysEndNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct JourneysEnd_Previews: PreviewProvider {
    static var previews: some View {
        JourneysEnd()
    }
}
