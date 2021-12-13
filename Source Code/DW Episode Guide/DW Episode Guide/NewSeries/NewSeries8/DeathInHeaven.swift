//
//  DeathInHeaven.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct DeathInHeaven: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: DeathInHeavenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<DeathInHeavenClass>
        @State var showingShare = false
        @AppStorage("DeathInHeavenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DeathInHeaven_Previews: PreviewProvider {
    static var previews: some View {
        DeathInHeaven()
    }
}
