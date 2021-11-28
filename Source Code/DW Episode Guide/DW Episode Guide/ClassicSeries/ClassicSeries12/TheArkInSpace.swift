//
//  TheArkInSpace.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheArkInSpace: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheArkInSpaceClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheArkInSpaceClass>
        @State var showingShare = false
        @AppStorage("TheArkInSpaceNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheArkInSpace_Previews: PreviewProvider {
    static var previews: some View {
        TheArkInSpace()
    }
}
