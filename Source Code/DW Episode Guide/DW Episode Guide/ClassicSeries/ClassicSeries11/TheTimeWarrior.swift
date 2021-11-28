//
//  TheTimeWarrior.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheTimeWarrior: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheTimeWarriorClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheTimeWarriorClass>
        @State var showingShare = false
        @AppStorage("TheTimeWarriorNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheTimeWarrior_Previews: PreviewProvider {
    static var previews: some View {
        TheTimeWarrior()
    }
}
