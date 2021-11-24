//
//  TheKeysOfMarinus.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct TheKeysOfMarinus: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: TheKeysOfMarinusClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheKeysOfMarinusClass>
    @State var showingShare = false
    @AppStorage("TheKeysOfMarinusNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheKeysOfMarinus_Previews: PreviewProvider {
    static var previews: some View {
        TheKeysOfMarinus()
    }
}
