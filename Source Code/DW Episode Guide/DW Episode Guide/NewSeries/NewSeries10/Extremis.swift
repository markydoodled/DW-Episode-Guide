//
//  Extremis.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct Extremis: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ExtremisClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ExtremisClass>
        @State var showingShare = false
        @AppStorage("ExtremisNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Extremis_Previews: PreviewProvider {
    static var previews: some View {
        Extremis()
    }
}
