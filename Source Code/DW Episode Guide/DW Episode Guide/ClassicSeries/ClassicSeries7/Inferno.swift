//
//  Inferno.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct Inferno: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: InfernoClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<InfernoClass>
        @State var showingShare = false
        @AppStorage("InfernoNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Inferno_Previews: PreviewProvider {
    static var previews: some View {
        Inferno()
    }
}
