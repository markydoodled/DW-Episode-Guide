//
//  TheAbominableSnowmen.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheAbominableSnowmen: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheAbominableSnowmenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheAbominableSnowmenClass>
        @State var showingShare = false
        @AppStorage("TheAbominableSnowmenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheAbominableSnowmen_Previews: PreviewProvider {
    static var previews: some View {
        TheAbominableSnowmen()
    }
}
