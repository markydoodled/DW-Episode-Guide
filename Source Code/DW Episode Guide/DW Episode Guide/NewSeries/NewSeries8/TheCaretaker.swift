//
//  TheCaretaker.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheCaretaker: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheCaretakerClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheCaretakerClass>
        @State var showingShare = false
        @AppStorage("TheCaretakerNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheCaretaker_Previews: PreviewProvider {
    static var previews: some View {
        TheCaretaker()
    }
}
