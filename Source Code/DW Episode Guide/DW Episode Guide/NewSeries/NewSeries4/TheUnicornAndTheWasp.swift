//
//  TheUnicornAndTheWasp.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheUnicornAndTheWasp: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheUnicornAndTheWaspClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheUnicornAndTheWaspClass>
        @State var showingShare = false
        @AppStorage("TheUnicornAndTheWaspNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheUnicornAndTheWasp_Previews: PreviewProvider {
    static var previews: some View {
        TheUnicornAndTheWasp()
    }
}
