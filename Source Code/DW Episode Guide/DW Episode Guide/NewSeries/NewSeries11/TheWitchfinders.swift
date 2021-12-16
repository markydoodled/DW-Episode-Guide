//
//  TheWitchfinders.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheWitchfinders: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheWitchfindersClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheWitchfindersClass>
        @State var showingShare = false
        @AppStorage("TheWitchfindersNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheWitchfinders_Previews: PreviewProvider {
    static var previews: some View {
        TheWitchfinders()
    }
}
