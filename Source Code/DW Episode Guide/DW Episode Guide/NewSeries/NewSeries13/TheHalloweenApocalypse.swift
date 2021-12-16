//
//  TheHalloweenApocalypse.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 20/11/2021.
//

import SwiftUI

struct TheHalloweenApocalypse: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheHalloweenApocalypseClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheHalloweenApocalypseClass>
        @State var showingShare = false
        @AppStorage("TheHalloweenApocalypseNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheHalloweenApocalypse_Previews: PreviewProvider {
    static var previews: some View {
        TheHalloweenApocalypse()
    }
}
