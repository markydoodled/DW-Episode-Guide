//
//  TheEvilOfTheDaleks.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheEvilOfTheDaleks: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheEvilOfTheDaleksClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheEvilOfTheDaleksClass>
        @State var showingShare = false
        @AppStorage("TheEvilOfTheDaleksNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheEvilOfTheDaleks_Previews: PreviewProvider {
    static var previews: some View {
        TheEvilOfTheDaleks()
    }
}
