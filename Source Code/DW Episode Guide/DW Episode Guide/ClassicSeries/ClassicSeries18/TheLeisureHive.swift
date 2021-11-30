//
//  TheLeisureHive.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheLeisureHive: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheLeisureHiveClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheLeisureHiveClass>
        @State var showingShare = false
        @AppStorage("TheLeisureHiveNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheLeisureHive_Previews: PreviewProvider {
    static var previews: some View {
        TheLeisureHive()
    }
}
