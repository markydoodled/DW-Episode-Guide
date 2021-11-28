//
//  TheAmbassadorsOfDeath.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheAmbassadorsOfDeath: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheAmbassadorsOfDeathClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheAmbassadorsOfDeathClass>
        @State var showingShare = false
        @AppStorage("TheAmbassadorsOfDeathNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheAmbassadorsOfDeath_Previews: PreviewProvider {
    static var previews: some View {
        TheAmbassadorsOfDeath()
    }
}
