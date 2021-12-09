//
//  ColdWar.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct ColdWar: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ColdWarClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ColdWarClass>
        @State var showingShare = false
        @AppStorage("ColdWarNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ColdWar_Previews: PreviewProvider {
    static var previews: some View {
        ColdWar()
    }
}
