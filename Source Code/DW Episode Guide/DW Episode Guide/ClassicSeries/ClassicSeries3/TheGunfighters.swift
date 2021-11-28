//
//  TheGunfighters.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheGunfighters: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheGunfightersClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheGunfightersClass>
        @State var showingShare = false
        @AppStorage("TheGunfightersNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheGunfighters_Previews: PreviewProvider {
    static var previews: some View {
        TheGunfighters()
    }
}
