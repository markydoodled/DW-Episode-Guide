//
//  Battlefield.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 14/11/2021.
//

import SwiftUI

struct Battlefield: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: BattlefieldClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<BattlefieldClass>
        @State var showingShare = false
        @AppStorage("BattlefieldNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Battlefield_Previews: PreviewProvider {
    static var previews: some View {
        Battlefield()
    }
}
