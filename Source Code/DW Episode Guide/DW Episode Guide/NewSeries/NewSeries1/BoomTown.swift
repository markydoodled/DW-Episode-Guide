//
//  BoomTown.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct BoomTown: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: BoomTownClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<BoomTownClass>
        @State var showingShare = false
        @AppStorage("BoomTownNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct BoomTown_Previews: PreviewProvider {
    static var previews: some View {
        BoomTown()
    }
}
