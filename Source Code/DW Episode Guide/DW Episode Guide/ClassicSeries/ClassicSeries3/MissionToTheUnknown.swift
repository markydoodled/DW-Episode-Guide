//
//  MissionToTheUnknown.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct MissionToTheUnknown: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: MissionToTheUnknownClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<MissionToTheUnknownClass>
        @State var showingShare = false
        @AppStorage("MissionToTheUnknownNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MissionToTheUnknown_Previews: PreviewProvider {
    static var previews: some View {
        MissionToTheUnknown()
    }
}
