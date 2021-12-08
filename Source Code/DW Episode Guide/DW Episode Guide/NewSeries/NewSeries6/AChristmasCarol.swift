//
//  AChristmasCarol.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct AChristmasCarol: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: AChristmasCarolClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<AChristmasCarolClass>
        @State var showingShare = false
        @AppStorage("AChristmasCarolNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AChristmasCarol_Previews: PreviewProvider {
    static var previews: some View {
        AChristmasCarol()
    }
}
