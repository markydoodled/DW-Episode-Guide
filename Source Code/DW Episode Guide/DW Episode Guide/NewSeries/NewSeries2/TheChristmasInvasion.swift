//
//  TheChristmasInvasion.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheChristmasInvasion: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheChristmasInvasionClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheChristmasInvasionClass>
        @State var showingShare = false
        @AppStorage("TheChristmasInvasionNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheChristmasInvasion_Previews: PreviewProvider {
    static var previews: some View {
        TheChristmasInvasion()
    }
}
