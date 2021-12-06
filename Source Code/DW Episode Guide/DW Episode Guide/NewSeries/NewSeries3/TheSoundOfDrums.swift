//
//  TheSoundOfDrums.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheSoundOfDrums: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheSoundOfDrumsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheSoundOfDrumsClass>
        @State var showingShare = false
        @AppStorage("TheSoundOfDrumsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheSoundOfDrums_Previews: PreviewProvider {
    static var previews: some View {
        TheSoundOfDrums()
    }
}
