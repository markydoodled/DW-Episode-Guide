//
//  TheBellsOfSaintJohn.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheBellsOfSaintJohn: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheBellsOfSaintJohnClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheBellsOfSaintJohnClass>
        @State var showingShare = false
        @AppStorage("TheBellsOfSaintJohnNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheBellsOfSaintJohn_Previews: PreviewProvider {
    static var previews: some View {
        TheBellsOfSaintJohn()
    }
}
