//
//  TheArk.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheArk: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheArkClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheArkClass>
        @State var showingShare = false
        @AppStorage("TheArkNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheArk_Previews: PreviewProvider {
    static var previews: some View {
        TheArk()
    }
}
