//
//  VengeanceOnVaros.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct VengeanceOnVaros: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: VengeanceOnVarosClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<VengeanceOnVarosClass>
        @State var showingShare = false
        @AppStorage("VengeanceOnVarosNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct VengeanceOnVaros_Previews: PreviewProvider {
    static var previews: some View {
        VengeanceOnVaros()
    }
}
