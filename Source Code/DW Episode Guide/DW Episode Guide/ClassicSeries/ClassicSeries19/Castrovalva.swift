//
//  Castrovalva.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct Castrovalva: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: CastrovalvaClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<CastrovalvaClass>
        @State var showingShare = false
        @AppStorage("CastrovalvaNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Castrovalva_Previews: PreviewProvider {
    static var previews: some View {
        Castrovalva()
    }
}
