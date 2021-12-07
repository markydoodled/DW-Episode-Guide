//
//  TheWatersOfMars.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheWatersOfMars: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheWatersOfMarsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheWatersOfMarsClass>
        @State var showingShare = false
        @AppStorage("TheWatersOfMarsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheWatersOfMars_Previews: PreviewProvider {
    static var previews: some View {
        TheWatersOfMars()
    }
}
