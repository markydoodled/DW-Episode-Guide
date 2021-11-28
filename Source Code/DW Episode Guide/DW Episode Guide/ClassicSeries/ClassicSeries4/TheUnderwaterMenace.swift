//
//  TheUnderwaterMenace.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheUnderwaterMenace: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheUnderwaterMenaceClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheUnderwaterMenaceClass>
        @State var showingShare = false
        @AppStorage("TheUnderwaterMenaceNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheUnderwaterMenace_Previews: PreviewProvider {
    static var previews: some View {
        TheUnderwaterMenace()
    }
}
