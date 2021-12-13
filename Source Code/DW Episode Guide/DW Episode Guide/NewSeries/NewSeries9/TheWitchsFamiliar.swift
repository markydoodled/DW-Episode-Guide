//
//  TheWitchsFamiliar.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheWitchsFamiliar: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheWitchsFamiliarClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheWitchsFamiliarClass>
        @State var showingShare = false
        @AppStorage("TheWitchsFamiliarNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheWitchsFamiliar_Previews: PreviewProvider {
    static var previews: some View {
        TheWitchsFamiliar()
    }
}
