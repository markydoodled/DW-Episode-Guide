//
//  TheAwakening.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct TheAwakening: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheAwakeningClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheAwakeningClass>
        @State var showingShare = false
        @AppStorage("TheAwakeningNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheAwakening_Previews: PreviewProvider {
    static var previews: some View {
        TheAwakening()
    }
}
