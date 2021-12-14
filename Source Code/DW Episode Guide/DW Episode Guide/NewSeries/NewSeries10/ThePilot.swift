//
//  ThePilot.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct ThePilot: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ThePilotClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ThePilotClass>
        @State var showingShare = false
        @AppStorage("ThePilotNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ThePilot_Previews: PreviewProvider {
    static var previews: some View {
        ThePilot()
    }
}
