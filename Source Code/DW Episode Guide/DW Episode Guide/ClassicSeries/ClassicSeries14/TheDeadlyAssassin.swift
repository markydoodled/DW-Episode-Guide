//
//  TheDeadlyAssassin.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheDeadlyAssassin: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheDeadlyAssassinClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheDeadlyAssassinClass>
        @State var showingShare = false
        @AppStorage("TheDeadlyAssassinNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheDeadlyAssassin_Previews: PreviewProvider {
    static var previews: some View {
        TheDeadlyAssassin()
    }
}
