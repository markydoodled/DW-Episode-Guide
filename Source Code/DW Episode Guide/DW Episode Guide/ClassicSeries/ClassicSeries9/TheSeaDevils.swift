//
//  TheSeaDevils.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheSeaDevils: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheSeaDevilsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheSeaDevilsClass>
        @State var showingShare = false
        @AppStorage("TheSeaDevilsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheSeaDevils_Previews: PreviewProvider {
    static var previews: some View {
        TheSeaDevils()
    }
}
