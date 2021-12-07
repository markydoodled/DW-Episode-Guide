//
//  TheFiresOfPompeii.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheFiresOfPompeii: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheFiresOfPompeiiClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheFiresOfPompeiiClass>
        @State var showingShare = false
        @AppStorage("TheFiresOfPompeiiNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheFiresOfPompeii_Previews: PreviewProvider {
    static var previews: some View {
        TheFiresOfPompeii()
    }
}
