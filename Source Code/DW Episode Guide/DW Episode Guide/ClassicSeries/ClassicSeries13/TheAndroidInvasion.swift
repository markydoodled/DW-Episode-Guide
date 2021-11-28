//
//  TheAndroidInvasion.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheAndroidInvasion: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheAndroidInvasionClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheAndroidInvasionClass>
        @State var showingShare = false
        @AppStorage("TheAndroidInvasionNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheAndroidInvasion_Previews: PreviewProvider {
    static var previews: some View {
        TheAndroidInvasion()
    }
}
