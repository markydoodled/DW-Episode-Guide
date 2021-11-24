//
//  MarcoPolo.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct MarcoPolo: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: MarcoPoloClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<MarcoPoloClass>
    @State var showingShare = false
    @AppStorage("MarcoPoloNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MarcoPolo_Previews: PreviewProvider {
    static var previews: some View {
        MarcoPolo()
    }
}
