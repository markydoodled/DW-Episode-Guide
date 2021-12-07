//
//  TheVampiresOfVenice.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheVampiresOfVenice: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheVampiresOfVeniceClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheVampiresOfVeniceClass>
        @State var showingShare = false
        @AppStorage("TheVampiresOfVeniceNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheVampiresOfVenice_Previews: PreviewProvider {
    static var previews: some View {
        TheVampiresOfVenice()
    }
}
