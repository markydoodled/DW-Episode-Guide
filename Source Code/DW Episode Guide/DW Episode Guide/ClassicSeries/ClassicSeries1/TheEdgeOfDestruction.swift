//
//  TheEdgeOfDestruction.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct TheEdgeOfDestruction: View {
@Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: TheEdgeOfDestructionClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheEdgeOfDestructionClass>
    @State var showingShare = false
    @AppStorage("TheEdgeOfDestructionNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheEdgeOfDestruction_Previews: PreviewProvider {
    static var previews: some View {
        TheEdgeOfDestruction()
    }
}
