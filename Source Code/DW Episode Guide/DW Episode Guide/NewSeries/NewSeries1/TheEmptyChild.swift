//
//  TheEmptyChild.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheEmptyChild: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheEmptyChildClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheEmptyChildClass>
        @State var showingShare = false
        @AppStorage("TheEmptyChildNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheEmptyChild_Previews: PreviewProvider {
    static var previews: some View {
        TheEmptyChild()
    }
}
